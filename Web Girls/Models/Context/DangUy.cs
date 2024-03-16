namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DangUy")]
    public partial class DangUy
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DangUy()
        {
            HoiVien_DangUy = new HashSet<HoiVien_DangUy>();
        }

        [Key]
        public int MaDangUy { get; set; }

        [StringLength(100)]
        public string TenDangUy { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoiVien_DangUy> HoiVien_DangUy { get; set; }
    }
}
