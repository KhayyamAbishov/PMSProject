using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation.Models
{
    public class HouseModel : PropertyModel
    {
        [Display(Name = "Floor Number")]
        [Required]
        public int FloorNumberHouse { get; set; }


        [Display(Name = "Room Number")]
        [Required]
        public int RoomNumberHouse { get; set; }

        [Display(Name = "Bathroom")]
        [Required]
        public int BathroomHouse { get; set; }

        [Display(Name = "Total Area")]
        [Required]
        [DataType(DataType.Currency)]
        public decimal? TotalAreaHouse { get; set; }

        [Display(Name = "Land Area(sot)")]
        [Required]
        [DataType(DataType.Currency)]
        public decimal? LandAreaHouse { get; set; }

        [Display(Name ="Garage")]
        public int GarageHouse { get; set; }



        [Display(Name = "Credit")]
        public bool CreditHouse { get; set; }

        [Display(Name = "HasDocument")]
        public bool HasDcoumentHouse { get; set; }

        [Display(Name = "Repairing")]
        public bool RepairingHouse { get; set; }

        [Display(Name = "Gas")]
        public bool GasHouse { get; set; }

        [Display(Name = "Water")]
        public bool WaterHouse { get; set; }

        [Display(Name = "Electric")]
        public bool ElectricHouse { get; set; }

        [Display(Name ="Telephone")]
        public bool TelephoneHouse { get; set; }

        [Display(Name ="Cable TV")]
        public bool CabelTVHouse { get; set; }
        
        [Display(Name ="Internet")]
        public bool InternetHouse { get; set; }

        [Display(Name ="Conditioner")]
        public bool ConditionerHouse { get; set; }

        [Display(Name ="KitchenFurniture")]
        public bool KitchenFurnitureHouse { get; set; }

        [Display(Name ="Handy")]
        public bool HandyHouse { get; set; }

        [Display(Name ="Comby System")]
        public bool CombySystemHouse { get; set; }
    }
}

