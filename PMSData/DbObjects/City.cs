namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("City")]
    public partial class City
    {
        public City()
        {
            Districts = new HashSet<District>();
            Metroes = new HashSet<Metro>();
            PropertyAddresses = new HashSet<PropertyAddress>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        public virtual ICollection<District> Districts { get; set; }

        public virtual ICollection<Metro> Metroes { get; set; }

        public virtual ICollection<PropertyAddress> PropertyAddresses { get; set; }
    }
}
