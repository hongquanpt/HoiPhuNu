namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CongVanBaoCao")]
    public partial class CongVanBaoCao
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CongVanBaoCao()
        {
            NoiNhans = new HashSet<NoiNhan>();
        }

        [Key]
        public int Ma { get; set; }

        [Required]
        public string TieuDe { get; set; }

        public string NoiDung { get; set; }

        public int NoiGui { get; set; }

        public DateTime ThoiGianGui { get; set; }

        public string TepDinhKem { get; set; }

        public bool? DaXem { get; set; }

        public virtual HoiPhuNu HoiPhuNu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NoiNhan> NoiNhans { get; set; }
    }
}
