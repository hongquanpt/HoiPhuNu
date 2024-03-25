namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class SinhHoat_Vang
    {
        [Key]
        public int MaSH_V { get; set; }

        public int MaSinhHoat { get; set; }

        [StringLength(15)]
        public string MaHV { get; set; }


        public virtual SinhHoat SinhHoat { get; set; }

        public virtual HoiVien HoiVien { get; set; }
    }
}
