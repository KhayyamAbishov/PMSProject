namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("PropertyFeature")]
    public partial class PropertyFeature
    {
        public int PropertyFeatureId { get; set; }

        public int PropertyId { get; set; }

        public int FeatureId { get; set; }

        public virtual Feature Feature { get; set; }

        public virtual Property Property { get; set; }
    }
}
