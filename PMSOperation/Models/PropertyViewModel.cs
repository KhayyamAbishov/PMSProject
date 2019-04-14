using System;
using System.Collections.Generic;

namespace PMSOperation.Models
{
    public class PropertyViewModel
    {
        public int PropertyId { get; set; }

        public int? FloorNumber { get; set; }

        public decimal? TotalArea { get; set; }

        public decimal? Price { get; set; }

        public int? Garage { get; set; }

        public int? Bathroom { get; set; }

        public PropertyStatusClassifier PropertyStatus { get; set; }

        public string PropertyDescription { get; set; }

        public PropertyTypeClassifier PropertyType { get; set; }

        public decimal? LandArea { get; set; }

        public int? FlatFloor { get; set; }

        public int? RoomNumber { get; set; }

        public string UserId { get; set; }
        public string Firstname { get; set; }
        public string LastName { get; set; }
        public string UserImageUrl { get; set; }

        public string Email { get; set; }
        public string PhoneNumber { get; set; }

        public ApartmentTypeClassifier? ApartmentType { get; set; }
        public string City { get; set; }

        public string District { get; set; }

        public string Metro { get; set; }

        public string Photo { get; set; }

        public string Feature { get; set; }

        public DateTime AddDate { get; set; }
    }
}
