namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("District")]
    public partial class District
    {
        public District()
        {
            PropertyAddresses = new HashSet<PropertyAddress>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        public int CityId { get; set; }

        public virtual City City { get; set; }

        public virtual ICollection<PropertyAddress> PropertyAddresses { get; set; }
    }
}
