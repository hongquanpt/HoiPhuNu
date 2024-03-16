namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TinBai")]
    public partial class TinBai
    {
        [Key]
        public int MaTinBai { get; set; }

        [StringLength(100)]
        public string TieuDe { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayDang { get; set; }

        public int? LuotXem { get; set; }

        public string NoiDung { get; set; }

        public string NoiDungTomTat { get; set; }

        [StringLength(50)]
        public string Img { get; set; }

        public string imgtitle { get; set; }

        [StringLength(15)]
        public string MaHV { get; set; }

        public int? MaLoaiTinBai { get; set; }

        [StringLength(50)]
        public string NguoiViet { get; set; }

        [StringLength(50)]
        public string DonVi { get; set; }

        [StringLength(50)]
        public string Img1 { get; set; }

        public string imgtitle1 { get; set; }

        public bool? PheDuyet { get; set; }

        public virtual HoiVien HoiVien { get; set; }

        public virtual LoaiTinBai LoaiTinBai { get; set; }
    }
}
