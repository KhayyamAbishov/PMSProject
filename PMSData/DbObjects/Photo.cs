namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Photo")]
    public partial class Photo
    {
        public int PhotoId { get; set; }

        public int PropertyId { get; set; }

        public string PhotoTitle { get; set; }

        public string PhotoPath { get; set; }

        public decimal? PhotoSize { get; set; }

        public string AltText { get; set; }

        public string UploadedFrom { get; set; }

        public string UploadedTo { get; set; }

        public decimal? Size { get; set; }

        [StringLength(50)]
        public string Extension { get; set; }

        public DateTime UploadedOn { get; set; }

        public virtual Property Property { get; set; }
    }
}
