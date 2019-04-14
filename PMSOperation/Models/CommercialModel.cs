using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation.Models
{
    public class CommercialModel : PropertyModel
    {
        [Display(Name = "Floor Number")]
        [Required]
        public int FloorNumberCommercial { get; set; }
        [Display(Name = "Flat Floor")]
        [Required]
        public int FlatFloorCommercial { get; set; }


        [Display(Name = "Room Number")]
        [Required]
        public int RoomNumberCommercial { get; set; }

       

        [Display(Name = "Total Area")]
        [Required]
        [DataType(DataType.Currency)]
        public decimal? TotalAreaCommercial { get; set; }

       

        [Display(Name ="Credit")]
        public bool CreditCommercial { get; set; }

        [Display(Name ="HasDocument")]
        public bool HasDocumentCommercial { get; set; }

        [Display(Name ="Repairing")]
        public bool RepairingCommercial { get; set; }

        [Display(Name ="Gas")]
        public bool GasCommercial { get; set; }

        [Display(Name ="Water")]
        public bool WaterCommercial { get; set; }

        [Display(Name ="Electric")]
        public bool ElectricCommercial { get; set; }

        [Display(Name ="Telephone")]
        public bool TelephoneCommercial { get; set; }

        [Display(Name ="Cable TV")]
        public bool CabelTVCommercial { get; set; }

        [Display(Name ="Central Heating System")]
        public bool CentralHeatingSystemCommercial { get; set; }

        [Display(Name ="Internet")]
        public bool InternetCommercial { get; set; }

        [Display(Name ="Conditioner")]
        public bool ConditionerCommercial { get; set; }

        [Display(Name ="Handy")]
        public bool HandyCommercial { get; set; }

        [Display(Name ="Comby System")]
        public bool CombySystemCommercial { get; set; }
    }
}

