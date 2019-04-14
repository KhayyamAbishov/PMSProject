using PMSData.DbObjects;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
    public class CommercialOperation : PropertyOperation<CommercialModel>
    {
        protected override void Prepare()
        {
            base.Prepare();
            base.Property.FloorNumber = Parameters.FloorNumberCommercial;
            base.Property.FlatFloor = Parameters.FlatFloorCommercial;
            base.Property.TotalArea = Parameters.TotalAreaCommercial;
            base.Property.RoomNumber = Parameters.RoomNumberCommercial;

            var list = DbContext.PropertyFeatures.Where(x => x.PropertyId == Parameters.PropertyId).ToList();

            if (list != null && list.Count > 0)
                DbContext.PropertyFeatures.RemoveRange(list);

            if (Parameters.CreditCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Credit");
                PropertyFeatures.Add(f);
            }
            if (Parameters.HasDocumentCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "HasDocument");
                PropertyFeatures.Add(f);
            }
            if (Parameters.RepairingCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Repairing");
                PropertyFeatures.Add(f);
            }
            if (Parameters.GasCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Gas");
                PropertyFeatures.Add(f);
            }
            if (Parameters.WaterCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Water");
                PropertyFeatures.Add(f);
            }
            if (Parameters.ElectricCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Electric");
                PropertyFeatures.Add(f);
            }
            if (Parameters.TelephoneCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Telephone");
                PropertyFeatures.Add(f);
            }
            if (Parameters.CabelTVCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "CabelTV");
                PropertyFeatures.Add(f);
            }

            if (Parameters.CentralHeatingSystemCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "CentralHeatingSystem");
                PropertyFeatures.Add(f);
            }


            if (Parameters.InternetCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Internet");
                PropertyFeatures.Add(f);

            }

            if (Parameters.ConditionerCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Conditioner");
                PropertyFeatures.Add(f);

            }

            
            if (Parameters.HandyCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Handy");
                PropertyFeatures.Add(f);

            }
            if (Parameters.CombySystemCommercial)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "CombySystem");
                PropertyFeatures.Add(f);
            }
        }

    
    }
}
