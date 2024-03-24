namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoiPhuNu")]
    public partial class HoiPhuNu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoiPhuNu()
        {
            BCH_HPN = new HashSet<BCH_HPN>();
            CongVanBaoCaos = new HashSet<CongVanBaoCao>();
            HoatDongs = new HashSet<HoatDong>();
            SinhHoats = new HashSet<SinhHoat>();
            HoiViens = new HashSet<HoiVien>();
            NoiNhans = new HashSet<NoiNhan>();
        }

        [Key]
        public int MaHPN { get; set; }

        [Required]
        [StringLength(25)]
        public string TenHPN { get; set; }

        [StringLength(15)]
        public string MaHV { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BCH_HPN> BCH_HPN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CongVanBaoCao> CongVanBaoCaos { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoatDong> HoatDongs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SinhHoat> SinhHoats { get; set; }
        public virtual HoiVien HoiVien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoiVien> HoiViens { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NoiNhan> NoiNhans { get; set; }
    }
}
