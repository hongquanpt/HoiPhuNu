namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiSinhHoat")]
    public partial class LoaiSinhHoat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiSinhHoat()
        {
            SinhHoats = new HashSet<SinhHoat>();
        }

        [Key]
        public int MaLoaiSinhHoat { get; set; }

        [StringLength(100)]
        public string TenSinhHoat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SinhHoat> SinhHoats { get; set; }
    }
}
