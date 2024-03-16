using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Girls.Models.ModelsView
{
    public class TinBaiView
    {
        public int MaTinBai { get; set; }       
        public string TieuDe { get; set; }      
        public DateTime? NgayDang { get; set; }
        public int? LuotXem { get; set; }
        public string NoiDungTomTat { get; set; }     
        public string Img { get; set; }
        public string LoaiTinBai{ get; set; }
        public string NguoiViet { get; set; }
        public string DonVi { get; set; }

    }
}