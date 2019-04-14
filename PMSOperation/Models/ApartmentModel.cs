using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation.Models
{
    public class ApartmentModel : PropertyModel
    {
        [Display(Name = "Apartment Type")]
        [Required]
        public ApartmentTypeClassifier ApartmentType { get; set; }
        [Display(Name = "Floor Number")]
        [Required]
        public int FloorNumberApartment { get; set; }
        [Display(Name = "Flat Floor")]
        [Required]
        public int FlatFloorApartment { get; set; }
        [Display(Name ="Total Area")]
        [DataType(DataType.Currency)]

        public decimal? TotalAreaApartment { get; set; }
        [Display(Name = "Bathroom")]
        public int BathroomApartment { get; set; }
        [Display(Name = "RoomNumber")]
        public int RoomNumberApartment { get; set; }
        [Display(Name = "HasDocument")]
        public bool HasDocumentApartment { get; set; }
        [Display(Name = "Repairing")]
        public bool RepairingApartment { get; set; }
        [Display(Name = "Gas")]
        public bool GasApartment { get; set; }
        [Display(Name = "Water")]
        public bool WaterApartment { get; set; }
        [Display(Name = "Electric")]
        public bool ElectricApartment { get; set; }
        [Display(Name = "Telephone")]
        public bool TelephoneApartment { get; set; }
        [Display(Name = "CabelTV")]
        public bool CabelTVApartment { get; set; }
        [Display(Name = "Lift")]
        public bool LiftApartment { get; set; }
        [Display(Name = "CentralHeatingSystem")]
        public bool CentralHeatingSystemApartment { get; set; }
        [Display(Name = "Internet")]
        public bool InternetApartment { get; set; }
        [Display(Name = "Conditioner")]
        public bool ConditionerApartment { get; set; }
        [Display(Name = "KitchenFurniture")]
        public bool KitchenFurnitureApartment { get; set; }
        [Display(Name = "Handy")]
        public bool HandyApartment { get; set; }
        [Display(Name = "Comby System")]
        public bool CombySystemApartment { get; set; }
        [Display(Name = "Credit")]
        public bool CreditApartment { get; set; }
    }
}
