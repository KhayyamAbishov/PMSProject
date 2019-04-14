using Microsoft.AspNet.Identity;
using PMSData.DbObjects;
using PMSOperation;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace PMSWeb.Controllers
{
    [Authorize]
    public class PropertyController : Controller
    {
        // GET: Property
        [AllowAnonymous]
        public ActionResult Index()
        {
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetProperties(null, User.Identity.GetUserId());
            return View(model);
        }

        [AllowAnonymous]
        public ActionResult Detail(int? id)
        {
            PropertyViewOperation operation = new PropertyViewOperation();

            var model = operation.GetProperty(id);


            return View(model);
        }

        [HttpGet]
        public ActionResult Submit()
        {
            PropertyModel model = new PropertyModel();
            return View(model);
        }

        [HttpGet]
        public ActionResult EditProperty(int id, PropertyTypeClassifier type)
        {
            PropertyViewOperation p = new PropertyViewOperation();
            if (type == PropertyTypeClassifier.Apartament)
            {
                ApartmentModel model = p.GetPropertyApartment(id);
                return View("~/Views/Property/Submit.cshtml", model);
            }
            else if (type == PropertyTypeClassifier.House)
            {
                HouseModel model = p.GetPropertyHouse(id);
                return View("~/Views/Property/Submit.cshtml", model);
            }
            else if (type == PropertyTypeClassifier.Commercial)
            {
              CommercialModel model =  p.GetPropertyCommercial(id);
                return View("~/Views/Property/Submit.cshtml", model);
            }
            else
            {
               LandModel model= p.GetPropertyLand(id);
                return View("~/Views/Property/Submit.cshtml", model);
            }
            
        }

        [HttpPost]
        public ActionResult Submit(PropertyModel model)
        {
            return View(model);
        }

        public ActionResult Delete(int id)
        {
            PMSContext context = new PMSContext();
            Property property = context.Properties.Find(id);
            
            context.Properties.Remove(property);
            context.SaveChanges();
            return RedirectToAction("Index","Property");
        }

        [HttpGet]
        [AllowAnonymous]
        public ActionResult RecommendedProperty(PropertyTypeClassifier propertyType, int propertyId)
        {
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetProperty(propertyType, propertyId);
            return PartialView("~/Views/Shared/_RecommendedProperties.cshtml", model);
        }

        [HttpPost]
        public ActionResult SubmitApartment(ApartmentModel model, HttpPostedFileBase[] files)
        {
            if (files.Length == 1 && files[0] == null && !model.HasImage)
            {
                ModelState.AddModelError(string.Empty, "A photo file must be chosen.");
            }

            if (ModelState.IsValid)
            {
                PhotoProcessing(files, model);
                ApartmentOperation operation = new ApartmentOperation();
                var result = operation.Execute(model, User.Identity.GetUserId());

                if (result.IsSuccess)
                    return RedirectToAction("Index");
            }
           // ModelState.Clear();
            return View("Submit", model);
        }

        [HttpPost]
        public ActionResult SubmitHouse(HouseModel model, HttpPostedFileBase[] files)
        {
            if (files.Length == 1 && files[0] == null && !model.HasImage)
            {
                ModelState.AddModelError(string.Empty, "A photo file must be chosen.");

            }
            if (ModelState.IsValid)
            {
                PhotoProcessing(files, model);
                HouseOperation operation = new HouseOperation();
                var result = operation.Execute(model, User.Identity.GetUserId());
                if (result.IsSuccess)
                    return RedirectToAction("Index");
            }
            ModelState.Clear();
            return View("Submit", model);
        }

        
        [HttpPost]
        public ActionResult SubmitLand(LandModel model, HttpPostedFileBase[] files)
        {
            if (files.Length == 1 && files[0] == null && !model.HasImage)
            {
                ModelState.AddModelError(string.Empty, "A photo file must be chosen.");
            }

            if (ModelState.IsValid)
            {

                PhotoProcessing(files, model);

                LandOperation operation = new LandOperation();
                var result = operation.Execute(model, User.Identity.GetUserId());

                if (result.IsSuccess)
                {
                    PropertyViewOperation op = new PropertyViewOperation();
                    var resultModel = op.GetProperties(null, User.Identity.GetUserId());
                    
                    return RedirectToAction("Index", resultModel);
                }
            }
            return View("Submit", model);
        }

        
        [HttpPost]
        public ActionResult SubmitCommercial(CommercialModel model, HttpPostedFileBase[] files)
        {
            if (files.Length == 1 && files[0] == null && !model.HasImage)
            {
                ModelState.AddModelError(string.Empty, "A photo file must be chosen.");
            }

            if (ModelState.IsValid)
            {
                PhotoProcessing(files, model);

                CommercialOperation operation = new CommercialOperation();
                var result = operation.Execute(model, User.Identity.GetUserId());

                if (result.IsSuccess)
                    return RedirectToAction("Index");
            }
            return View("Submit", model);
        }

        [HttpGet]
        [AllowAnonymous]
        public JsonResult GetDistrict(int city)
        {
            var districts = new Repository().GetDistricts(city);
            return Json(districts, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        [AllowAnonymous]
        public JsonResult GetMetro(int city)
        {
            var metroes = (new Repository()).GetMetroes(city);
            return Json(metroes, JsonRequestBehavior.AllowGet);
        }


        public ActionResult PropertyView(int? propertyType, object model)
        {

            PropertyTypeClassifier? type = (PropertyTypeClassifier)propertyType;

            if (type == PropertyTypeClassifier.Apartament)
            {
                return PartialView("~/Views/Shared/_Apartment.cshtml", model as ApartmentModel ?? new ApartmentModel());
            }
            else if (type == PropertyTypeClassifier.Commercial)
            {
                return PartialView("~/Views/Shared/_Commercial.cshtml", model as CommercialModel ?? new CommercialModel());
            }
            else if (type == PropertyTypeClassifier.House)
            {
                return PartialView("~/Views/Shared/_House.cshtml", model as HouseModel ?? new HouseModel());
            }
            else
            {
                return PartialView("~/Views/Shared/_Land.cshtml", model as LandModel ?? new LandModel());
            }

        }

        private void PhotoProcessing(HttpPostedFileBase[] files, PropertyModel model)
        {
            if (files.Length == 1 && files[0] == null)
                return;

            int i = 0;

            foreach (var file in files)
            {
                PhotoModel photoModel = new PhotoModel();
                string photoPropertyName = DateTime.Now.ToString("Mddyyyyhhmmsstt") + "_" + i; //Path.GetFileName(file.FileName);
                decimal photoSize = file.ContentLength;
                string photoPropertyEx = Path.GetExtension(file.FileName);
                string photoPropertyToPath = Path.Combine(Server.MapPath("~/Content/Uploads/Properties"), $"{photoPropertyName}{photoPropertyEx}");
                // file is uploaded
                file.SaveAs(photoPropertyToPath);

                // Create Small thumbnail from image using FixedSize
                //string photoSThumbPropertyToPath = Path.Combine(Server.MapPath("~/Content/Uploads/Properties/Small"), photoPropertyName);
                //Image photoThumb = Image.FromStream(file.InputStream, true, true);
                //FixedSize(photoSThumbPropertyToPath, photoThumb, 256, 236, true);

                //// Create Medium thumbnail from image using FixedSize
                //string photoMThumbPropertyToPath = Path.Combine(Server.MapPath("~/Content/Uploads/Properties/Medium"), photoPropertyName);
                //FixedSize(photoMThumbPropertyToPath, photoThumb, 328, 378, true);

                photoModel.PhotoTitle = photoPropertyName;
                photoModel.PhotoPath = "~/" + photoPropertyToPath.Substring(photoPropertyToPath.IndexOf("Content")).Replace('\\', '/');
                photoModel.PhotoSize = photoSize;
                photoModel.UploadedTo = photoPropertyToPath;

                model.Photos.Add(photoModel);
                i++;
            }

        }

        // Generate thumbnail from Image
        public static void FixedSize(string filePathName, Image image, int Width, int Height, bool needToFill)
        {

            Bitmap bmpThumb = null;
            try
            {
                int sourceWidth = image.Width;
                int sourceHeight = image.Height;
                int sourceX = 0;
                int sourceY = 0;
                double destX = 0;
                double destY = 0;

                double nScale = 0;
                double nScaleW = 0;
                double nScaleH = 0;

                nScaleW = ((double)Width / (double)sourceWidth);
                nScaleH = ((double)Height / (double)sourceHeight);
                if (!needToFill)
                {
                    nScale = Math.Min(nScaleH, nScaleW);
                }
                else
                {
                    nScale = Math.Max(nScaleH, nScaleW);
                    destY = (Height - sourceHeight * nScale) / 2;
                    destX = (Width - sourceWidth * nScale) / 2;
                }

                if (nScale > 1)
                    nScale = 1;

                int destWidth = (int)Math.Round(sourceWidth * nScale);
                int destHeight = (int)Math.Round(sourceHeight * nScale);

                bmpThumb = new Bitmap(destWidth + (int)Math.Round(2 * destX), destHeight + (int)Math.Round(2 * destY));

                using (Graphics graphic = Graphics.FromImage(bmpThumb))
                {
                    graphic.Clear(Color.White);
                    graphic.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    graphic.SmoothingMode = SmoothingMode.HighQuality;
                    graphic.PixelOffsetMode = PixelOffsetMode.HighQuality;
                    graphic.CompositingQuality = CompositingQuality.HighQuality;

                    Rectangle to = new System.Drawing.Rectangle((int)Math.Round(destX), (int)Math.Round(destY), destWidth, destHeight);
                    Rectangle from = new System.Drawing.Rectangle(sourceX, sourceY, sourceWidth, sourceHeight);

                    graphic.DrawImage(image, to, from, System.Drawing.GraphicsUnit.Pixel);
                    image = bmpThumb;
                    // created thumbnail is uploaded
                    image.Save(filePathName, ImageFormat.Jpeg);

                }//done with drawing on "graphic"
            }
            catch
            { //error before IDisposable ownership transfer
                if (bmpThumb != null) bmpThumb.Dispose();
                throw;
            }
        }
    }
}