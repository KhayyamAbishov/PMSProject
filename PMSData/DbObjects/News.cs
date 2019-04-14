namespace PMSData.DbObjects
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class News
    {
        [Key]
        [Column(Order = 0)]
        public int NewsId { get; set; }

        [StringLength(100)]
        public string NewsHeader { get; set; }

        [StringLength(250)]
        public string NewsTitle { get; set; }

        public string NewBody { get; set; }

        [StringLength(50)]
        public string AuthorName { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PhotoId { get; set; }

        public virtual Photo Photo { get; set; }
    }
}
