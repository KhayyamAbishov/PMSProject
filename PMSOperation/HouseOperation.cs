using PMSData.DbObjects;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
   public  class HouseOperation : PropertyOperation<HouseModel>
    {
        protected override void Prepare()
        {
            base.Prepare();

            base.Property.FloorNumber = Parameters.FloorNumberHouse;
            base.Property.TotalArea = Parameters.TotalAreaHouse;
            base.Property.Garage = Parameters.GarageHouse;
            base.Property.Bathroom = Parameters.BathroomHouse;
            base.Property.LandArea = Parameters.LandAreaHouse;
            base.Property.RoomNumber = Parameters.RoomNumberHouse;

            var list = DbContext.PropertyFeatures.Where(x => x.PropertyId == Parameters.PropertyId).ToList();

            if (list != null && list.Count > 0)
                DbContext.PropertyFeatures.RemoveRange(list);

            if (Parameters.CreditHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Credit");
                PropertyFeatures.Add(f);
            }
            if (Parameters.HasDcoumentHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "HasDocument");
                PropertyFeatures.Add(f);
            }
            if (Parameters.RepairingHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Repairing");
                PropertyFeatures.Add(f);
            }
            if (Parameters.GasHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Gas");
                PropertyFeatures.Add(f);
            }
            if (Parameters.WaterHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Water");
                PropertyFeatures.Add(f);
            }
            if (Parameters.ElectricHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Electric");
                PropertyFeatures.Add(f);
            }
            if (Parameters.TelephoneHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Telephone");
                PropertyFeatures.Add(f);
            }
            if (Parameters.CabelTVHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "CabelTV");
                PropertyFeatures.Add(f);
            }
            if (Parameters.InternetHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Internet");
                PropertyFeatures.Add(f);

            }

            if (Parameters.ConditionerHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Conditioner");
                PropertyFeatures.Add(f);

            }

            if (Parameters.KitchenFurnitureHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "KitchenFurniture");
                PropertyFeatures.Add(f);
            }
            if (Parameters.HandyHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Handy");
                PropertyFeatures.Add(f);

            }
            if (Parameters.CombySystemHouse)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "CombySystem");
                PropertyFeatures.Add(f);
            }
        }

        protected override void DoJob()
        {
            base.DoJob();
        }
    
    }
}
