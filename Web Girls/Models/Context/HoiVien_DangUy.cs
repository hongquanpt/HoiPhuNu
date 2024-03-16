namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class HoiVien_DangUy
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoiVien_DangUy()
        {
            HoiViens = new HashSet<HoiVien>();
        }

        [Key]
        public int MaVTDU { get; set; }

        [Required]
        [StringLength(25)]
        public string TenVTDU { get; set; }

        public int? MaDangUy { get; set; }

        [StringLength(15)]
        public string MaHV { get; set; }

        [Column(TypeName = "date")]
        public DateTime? KetThuc { get; set; }

        [Column(TypeName = "date")]
        public DateTime? BatDau { get; set; }

        public bool? XacNhan { get; set; }

        public virtual DangUy DangUy { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoiVien> HoiViens { get; set; }

        public virtual HoiVien HoiVien { get; set; }
    }
}
