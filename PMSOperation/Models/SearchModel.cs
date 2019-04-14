using PMSData.DbObjects;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation.Models
{
    public class SearchModel
    {
        [Display(Name ="City")]
        public int? CityId { get; set; }
        [Display(Name = "District")]
        public int? DistrictId {get;set;}
        [Display(Name = "Metro")]
        public int? MetroId { get; set; }

        public PropertyStatusClassifier? PropertyStatus { get; set; }
        public PropertyTypeClassifier? PropertyType { get; set; }
        public Decimal? PriceMin { get; set; }
        [Display(Name = "Price range")]
        public Decimal? PriceMax { get; set; }
        public Decimal? TotalAreaMin { get; set; }
        [Display(Name = "Total area range")]
        public Decimal? TotalAreaMax { get; set; }
        public Decimal? LandAreaMin { get; set; }
        [Display(Name = "Land area range")]
        public Decimal? LandAreaMax { get; set; }

        public int? FloorNumberMin { get; set; }
        [Display(Name = "Floor number range")]
        public int? FloorNumberMax { get; set; }
        public int? FlatFloorMin{ get; set; }
        [Display(Name = "Flat number range")]
        public int? FlatFloorMax { get; set; }
        public int? RoomNumberMin { get; set; }
        [Display(Name = "Room number range")]
        public int? RoomNumberMax { get; set; }

        public List<DropDownListItem> CityList { get; set; }
        public List<DropDownListItem> MetroList { get; set; }
        public List<DropDownListItem> DistrictList { get; set; }
        public SearchModel()
        {
            Repository rep = new Repository();
            CityList = rep.GetCities();
            DistrictList = rep.GetDistricts((CityId??-1));
            MetroList = rep.GetMetroes((CityId??-1));
        }
    }
}
