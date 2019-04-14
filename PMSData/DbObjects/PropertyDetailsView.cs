namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PropertyDetailsView")]
    public partial class PropertyDetailsView
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PropertyId { get; set; }

        public int? FloorNumber { get; set; }

        public decimal? TotalArea { get; set; }

        public decimal? Price { get; set; }

        public int? Garage { get; set; }

        public int? Bathroom { get; set; }

        public int? SellingCondition { get; set; }

        public string PropertyDescription { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int TypeId { get; set; }

        public decimal? LandArea { get; set; }

        public int? FlatFloor { get; set; }

        public int? RoomNumber { get; set; }

        [Key]
        [Column(Order = 2)]
        public string UserId { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string ImageUrl { get; set; }

        public int? ApartmentType { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(50)]
        public string City { get; set; }

        [StringLength(50)]
        public string District { get; set; }

        [StringLength(150)]
        public string Metro { get; set; }

        public string Photo { get; set; }

        public string Feature { get; set; }

        public DateTime AddDate { get; set; }
        public int CityId { get; set; }
        public int DistrictId { get; set; }
        public int MetroId { get; set; }
        public string AddressDescription { get; set; }
    }
}
