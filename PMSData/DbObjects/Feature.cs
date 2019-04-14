namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Feature")]
    public partial class Feature
    {
        public Feature()
        {
            PropertyFeatures = new HashSet<PropertyFeature>();
        }

        public int FeatureId { get; set; }

        [StringLength(50)]
        public string FeatureTitle { get; set; }

        public virtual ICollection<PropertyFeature> PropertyFeatures { get; set; }
    }
}
