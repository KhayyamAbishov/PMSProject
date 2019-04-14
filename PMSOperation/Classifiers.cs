using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation
{
 
        public enum PropertyTypeClassifier
        {
            Apartament = 1,
            House = 2,
            Land = 3,
            Commercial = 4
        }

       public enum PropertyStatusClassifier
        {
            Rent = 1,
            Sale = 2
        }

    public enum ApartmentTypeClassifier
    {
        NewContruction =1,
        OldConstruction = 2
    }
    public static class Classifier
    {
       public static Dictionary<int, string> CityClassifier { get; } = new Dictionary<int, string>()
        {
            {1,"Baku" },
            {2,"Sumgait" },
            {3,"Ganja" },
            {4,"Lenkeran" },
            {5,"Mingechahur"},
            {6,"Sheki"},
            {7,"Guba"}
        };

        public static Dictionary<int, string> DistrictClassifer { get; } = new Dictionary<int, string>()
        {
             {1,"Nizami" },
            {2,"Sebail" },
            {3,"Nesimi" },
            {4,"Yasamal" },
            { 5,"Nerimanov"},
            {6,"Xezer"},
            { 7,"Qaradag"}
        };

        
    }
}
