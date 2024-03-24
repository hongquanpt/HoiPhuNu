namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SinhHoat")]
    public partial class SinhHoat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SinhHoat()
        {
            SinhHoat_Vang = new HashSet<SinhHoat_Vang>();
        }

        [Key]
        public int MaSinhHoat { get; set; }

        public int? SoLuongVang { get; set; }

        public int? MaLoaiSinhHoat { get; set; }

        public string NoiDung { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinhHoat { get; set; }

        public int? MaHPN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SinhHoat_Vang> SinhHoat_Vang { get; set; }

        public virtual LoaiSinhHoat LoaiSinhHoat { get; set; }

        public virtual HoiPhuNu HoiPhuNu { get; set; }
    }
}
