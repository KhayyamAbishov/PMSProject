namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    
    [Table("PropertyAddress")]
    public partial class PropertyAddress
    {
        public PropertyAddress()
        {
            Properties = new HashSet<Property>();
        }

        public int PropertyAddressId { get; set; }

        public int CityId { get; set; }

        public int? DistrictId { get; set; }

        //street
        public string Description { get; set; }

        public int? MetroId { get; set; }

        public virtual City City { get; set; }

        public virtual District District { get; set; }

        public virtual Metro Metro { get; set; }
        public virtual ICollection<Property> Properties { get; set; }
    }
}
