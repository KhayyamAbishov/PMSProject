using PMSData.DbObjects;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
    public class ApartmentOperation : PropertyOperation<ApartmentModel>
    {
        protected override void Prepare()
        {
            base.Prepare();
            base.Property.ApartmentType = (int)Parameters.ApartmentType;

            base.Property.FloorNumber = Parameters.FloorNumberApartment;
            base.Property.TotalArea = Parameters.TotalAreaApartment;
            base.Property.Bathroom = Parameters.BathroomApartment;
            base.Property.FlatFloor = Parameters.FlatFloorApartment;
            base.Property.RoomNumber = Parameters.RoomNumberApartment;

            var list = DbContext.PropertyFeatures.Where(x => x.PropertyId == Parameters.PropertyId).ToList();

            if ( list!= null && list.Count > 0)
                DbContext.PropertyFeatures.RemoveRange(list);

            if (Parameters.CreditApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Credit");
                PropertyFeatures.Add(f);
            }
            if (Parameters.HasDocumentApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "HasDocument");
                PropertyFeatures.Add(f);
            }
            if (Parameters.RepairingApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Repairing");
                PropertyFeatures.Add(f);
            }
            if (Parameters.GasApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Gas");
                PropertyFeatures.Add(f);
            }
            if (Parameters.WaterApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Water");
                PropertyFeatures.Add(f);
            }
            if (Parameters.ElectricApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Electric");
                PropertyFeatures.Add(f);
            }
            if (Parameters.TelephoneApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Telephone");
                PropertyFeatures.Add(f);
            }
            if (Parameters.CabelTVApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "CabelTV");
                PropertyFeatures.Add(f);
            }
            if (Parameters.LiftApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Lift");
                PropertyFeatures.Add(f);
            }
                
            if (Parameters.CentralHeatingSystemApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "CentralHeatingSystem");
                PropertyFeatures.Add(f);
            }
                

            if (Parameters.InternetApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Internet");
                PropertyFeatures.Add(f);

            }

            if (Parameters.ConditionerApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Conditioner");
                PropertyFeatures.Add(f);

            }

            if (Parameters.KitchenFurnitureApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "KitchenFurniture");
                PropertyFeatures.Add(f);
            }
            if (Parameters.HandyApartment)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Handy");
                PropertyFeatures.Add(f);

            }
            if (Parameters.CombySystemApartment)
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
