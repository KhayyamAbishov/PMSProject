using PMSData.DbObjects;
using PMSOperation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
    public class LandOperation : PropertyOperation<LandModel>
    {
        protected override void Prepare()
        {
            base.Prepare();
            base.Property.LandArea = Parameters.LandAreaLand;

            var list = DbContext.PropertyFeatures.Where(x => x.PropertyId == Parameters.PropertyId).ToList();

            if (list != null && list.Count > 0)
                DbContext.PropertyFeatures.RemoveRange(list);

            if (Parameters.CreditLand)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Credit");
                PropertyFeatures.Add(f);
            }
            if (Parameters.HasDocumentLand)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "HasDocument");
                PropertyFeatures.Add(f);
            }
            
            if (Parameters.GasLand)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Gas");
                PropertyFeatures.Add(f);
            }
            if (Parameters.WaterLand)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Water");
                PropertyFeatures.Add(f);
            }
            if (Parameters.ElectricLand)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Electric");
                PropertyFeatures.Add(f);
            }
            if (Parameters.FenceLand)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Fence");
                PropertyFeatures.Add(f);
            }
            if (Parameters.GateLand)
            {
                PropertyFeature f = new PropertyFeature();
                f.Feature = DbContext.Features.FirstOrDefault(x => x.FeatureTitle == "Gate");
                PropertyFeatures.Add(f);
            }

        }

        protected override void DoJob()
        {
            base.DoJob();
        }
    
    }
}
