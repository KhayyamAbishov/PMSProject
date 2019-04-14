using Microsoft.AspNet.Identity;
using PMSOperation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PMSWeb.Controllers
{
    public class HomeController : Controller
    {
        
        // GET: Home
        public ActionResult Index()
        {

            string userId = User.Identity.GetUserId();
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetProperties(null, userId);

            if (userId == null)
            return View(model);

            return View("~/Views/Property/Edit.cshtml", model);
        }

        public ActionResult All()
        {
            string userId = User.Identity.GetUserId();
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetProperties(null, userId);

            if(userId == null)
            return View("~/Views/Property/Index.cshtml", model);

            return View("~/Views/Property/Edit.cshtml", model);
        }
        public ActionResult Sale()
        {
            string userId = User.Identity.GetUserId();
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetProperties(PropertyStatusClassifier.Sale, userId);

            if(userId == null)
            return View("~/Views/Property/Index.cshtml", model);

            return View("~/Views/Property/Edit.cshtml", model);
        }

        public ActionResult Rent()
        {
             string userId = User.Identity.GetUserId();
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetProperties(PropertyStatusClassifier.Rent, userId);

            if(userId == null)
            return View("~/Views/Property/Index.cshtml", model);

            return View("~/Views/Property/Edit.cshtml", model);
        }


        public ActionResult LastProperty()
        {
           
            PropertyViewOperation operation = new PropertyViewOperation();
            var model = operation.GetProperties(null, null).Take(3).ToList();

            return PartialView("~/Views/Shared/_LastProperty.cshtml", model);
        }
    }
}