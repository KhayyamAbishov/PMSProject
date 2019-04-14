using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PMSOperation.Models
{
    public class PhotoModel
    {
        public string PhotoTitle { get; set; }
        public string PhotoPath { get; set; }
        public decimal PhotoSize { get; set; }

        public string AltText { get; set; }
                
        public string UploadedFrom { get; set; }

        public string UploadedTo { get; set; }

        public decimal? Size { get; set; }

        public string Extension { get; set; }

        public DateTime UploadedOn { get; set; }
    }
}
