namespace Web_Girls.Models.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiBo")]
    public partial class ChiBo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ChiBo()
        {
            HoiVien_ChiBo = new HashSet<HoiVien_ChiBo>();
        }

        [Key]
        public int MaChiBo { get; set; }

        [StringLength(100)]
        public string TenChiBo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoiVien_ChiBo> HoiVien_ChiBo { get; set; }
    }
}
