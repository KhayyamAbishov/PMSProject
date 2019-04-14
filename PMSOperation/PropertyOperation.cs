using Microsoft.AspNet.Identity;
using PMSData.DbObjects;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
    public class PropertyOperation<TModel> where TModel : PropertyModel
    {
        protected TModel Parameters { get; set; }
        protected PMSUser User { get; set; }
        public OperationResult<TModel> Result { get; set; }
        protected Property Property { get; set; }
        protected PMSContext DbContext { get; set; }
        protected List<PropertyFeature> PropertyFeatures { get; set; }
        protected virtual void Prepare()
        {
            Property property = DbContext.Properties.FirstOrDefault(x => x.PropertyId == Parameters.PropertyId);

            Property = new Property();

            if (property != null)
                Property = property;


            PropertyFeatures = new List<PropertyFeature>();
            Property.PropertyFeatures = PropertyFeatures;

            Property.TypeId = (int)Parameters.PropertyType;
            Property.SellingCondition = (int)Parameters.PropertyStatus;
            Property.Price = Parameters.Price;
            Property.PropertyDescription = Parameters.PropertyDescription;
            Property.AddDate = DateTime.Now;



            foreach (PhotoModel ph in Parameters.Photos)
            {
                Photo photo = new Photo();
                photo.PhotoPath = ph.PhotoPath;
                photo.PhotoSize = ph.PhotoSize;
                photo.PhotoTitle = ph.PhotoTitle;
                photo.Extension = ph.Extension;
                photo.UploadedOn = DateTime.Now;

                Property.Photos.Add(photo);
            }


            PropertyAddress propertyAddress = new PropertyAddress();

            if (Property.PropertyAddress != null)
                propertyAddress = Property.PropertyAddress;

            propertyAddress.CityId = Parameters.City;
            propertyAddress.DistrictId = Parameters.District;
            propertyAddress.MetroId = Parameters.Metro;
            propertyAddress.Description = Parameters.AddressDescription;
            Property.PropertyAddress = propertyAddress;

            Property.User = User;



        }
        protected virtual void DoJob()
        {
            if (Parameters.PropertyId <= 0)
                DbContext.Properties.Add(Property);
        }

        public OperationResult<TModel> Execute(TModel param, string userId)
        {
            Parameters = param;
            Result = new OperationResult<TModel>();

            using (DbContext = new PMSContext())
            {
                User = DbContext.Users.FirstOrDefault(x => x.Id == userId);
                Prepare();
                DoJob();
                DbContext.SaveChanges();
            }

            return Result;
        }
    }
}
