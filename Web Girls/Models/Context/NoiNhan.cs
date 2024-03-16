namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NoiNhan")]
    public partial class NoiNhan
    {
        [Key]
        public int Ma { get; set; }

        public int MaHPN { get; set; }

        public int MaCongVan { get; set; }

        public virtual CongVanBaoCao CongVanBaoCao { get; set; }

        public virtual HoiPhuNu HoiPhuNu { get; set; }
    }
}
