using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation.Models
{
    public class LandModel : PropertyModel
    {
        [Display(Name = "Land Area(sot)")]
        [Required]
        [DataType(DataType.Currency)]
        public decimal? LandAreaLand { get; set; }

        [Display(Name = "Credit")]
        public bool CreditLand { get; set; }

        [Display(Name = "HasDocument")]
        public bool HasDocumentLand { get; set; }

        [Display(Name = "Fence")]
        public bool FenceLand { get; set; }

        [Display(Name = "Gate")]
        public bool GateLand { get; set; }

        [Display(Name = "Gas")]
        public bool GasLand { get; set; }

        [Display(Name = "Water")]
        public bool WaterLand { get; set; }

        [Display(Name = "Electric")]
        public bool ElectricLand { get; set; }
    }
}
