namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KyLuat")]
    public partial class KyLuat
    {
        [Key]
        public int Ma { get; set; }

        [StringLength(50)]
        public string HinhThucKyLuat { get; set; }

        public string LyDo { get; set; }

        public int? Nam { get; set; }

        public string GhiChu { get; set; }

        [StringLength(15)]
        public string MaHV { get; set; }

        public virtual HoiVien HoiVien { get; set; }
    }
}
