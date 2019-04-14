using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using PMSData.DbObjects;

namespace PMSOperation.Models
{
    public class PropertyModel
    {
        [Display(Name = "Property type")]
        [Required]
        [Range(1, 4, ErrorMessage = "Select Property type")]
        [EnumDataType(typeof(PropertyTypeClassifier))]
        public PropertyTypeClassifier PropertyType { get; set; }

        [Display(Name = "Property status")]
        [Required]
        [Range(1, 2, ErrorMessage = "Select Property status")]
        [EnumDataType(typeof(PropertyStatusClassifier))]
        public PropertyStatusClassifier PropertyStatus { get; set; }

        public int PropertyId { get; set; }

        [Display(Name = "Price")]
        [Required]
        [DataType(DataType.Currency)]
        //[RegularExpression(@"^\$?([1-9]{1}[0-9]{0,2}(\,[0-9]{3})*(\.[0-9]{0,2})?|[1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|(\.[0-9]{1,2})?)$", ErrorMessage = "{0} must be a Price.")]
        public decimal? Price { get; set; }

        [Required]
        [Display(Name = "City")]

        public int City { get; set; }
        [Display(Name ="District")]

        public int? District { get; set; }
        [Display(Name="Metro")]
        public int? Metro { get; set; }
        
        [Display(Name ="Address Description")]
        public string AddressDescription { get; set; }

        [Display(Name = "Property Description")]
        [StringLength(5000)]
        public string PropertyDescription { get; set; }
        [Display(Name ="Upload image")]
        public List<PhotoModel> Photos { get; set; }

        public bool HasImage { get; set; }

        public List<DropDownListItem> CityList {get;set; }
        public List<DropDownListItem> MetroList { get; set; }
        public List<DropDownListItem> DistrictList { get; set; }
        public PropertyModel()
        {
            Repository rep = new Repository();
            CityList = rep.GetCities();
            DistrictList = rep.GetDistricts(City);
            MetroList = rep.GetMetroes(City);
            Photos = new List<PhotoModel>();
        }
    }
}
