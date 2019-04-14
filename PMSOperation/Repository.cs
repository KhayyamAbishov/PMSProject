using System;
using System.Collections.Generic;
using System.Linq;

namespace PMSOperation
{
    public class Repository
    {
        public List<DropDownListItem> GetCities()
        {
            using (var dbContext = new PMSContext())
            {
                List<DropDownListItem> list = dbContext.Cities.Select(x => new DropDownListItem { Id = x.Id, Name = x.Name }).ToList();
                return list;
            }

        }

        public List<DropDownListItem> GetDistricts(int id)
        {
            using (var dbContext = new PMSContext())
            {
                List<DropDownListItem> list = dbContext.Districts.Where(x => x.CityId == id).Select(x => new DropDownListItem { Id = x.id, Name = x.Name }).ToList();
                return list;
            }
        }

        public List<DropDownListItem> GetMetroes(int id)
        {
            using (var dbContext = new PMSContext())
            {
                List<DropDownListItem> list = dbContext.Metroes.Where(x => x.CityId == id).Select(x => new DropDownListItem { Id = x.Id, Name = x.Name }).ToList();
                return list;
            }
        }
     
    }
}