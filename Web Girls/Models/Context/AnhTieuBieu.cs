namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AnhTieuBieu")]
    public partial class AnhTieuBieu
    {
        public int ID { get; set; }

        public string UrlAnh { get; set; }

        public string TieuDe { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayDang { get; set; }

        [StringLength(15)]
        public string MaHV { get; set; }

        public virtual HoiVien HoiVien { get; set; }
    }
}
