namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    

    [Table("Property")]
    public partial class Property
    {
        public Property()
        {
            PropertyFeatures = new HashSet<PropertyFeature>();
            Photos = new HashSet<Photo>();
        }

        public int PropertyId { get; set; }

        public int? FloorNumber { get; set; }

        public decimal? TotalArea { get; set; }

        public decimal? Price { get; set; }

        public int? Garage { get; set; }

        public int? Bathroom { get; set; }

        public int? SellingCondition { get; set; }

        public string PropertyDescription { get; set; }

        public int TypeId { get; set; }

        public int PropertyAddressId { get; set; }

        public DateTime AddDate { get; set; }

        public decimal? LandArea { get; set; }

        public int? FlatFloor { get; set; }

        public int? RoomNumber { get; set; }
        public int? ApartmentType { get; set; }

        [Required]
        [StringLength(128)]
        public string UserId { get; set; }

        public virtual ICollection<Photo> Photos { get; set; }
        public virtual PMSUser User { get; set; }

        public virtual PropertyAddress PropertyAddress { get; set; }

        public virtual ICollection<PropertyFeature> PropertyFeatures { get; set; }
    }
}
