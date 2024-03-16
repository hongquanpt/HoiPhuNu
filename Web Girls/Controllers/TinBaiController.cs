using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_Girls.Models.ModelsView;
using Web_Girls.Models.Context;
using System.IO;
using Web_Girls.App_Start;


namespace Web_Girls.Controllers
{
    public class TinBaiController : Controller
    {
        MyContext obj = new MyContext();
        // GET: TinBai
        public ActionResult Index()
        {
            //var list = obj.TinBais
            return View();
        }
        public ActionResult TinBaiGanDay()
        {
            var tinbai = (from a in obj.TinBais
                          where a.PheDuyet == true
                          orderby a.NgayDang descending
                          select a).Take(5).ToList();
            ViewBag.tinbai = tinbai;
            return PartialView();
        }
        public ActionResult TinBaiGanDayTrenSlide()
        {
            var tinbai = (from a in obj.TinBais
                          where a.PheDuyet == true
                          orderby a.NgayDang descending
                          select a).Take(5).ToList();
            ViewBag.tinbai = tinbai;
            return PartialView();
        }
        public ActionResult TinBaiXemNhieu()
        {
            var tinbai = (from a in obj.TinBais
                          where a.PheDuyet == true
                          orderby a.LuotXem descending
                          select a).Take(6).ToList();
            ViewBag.tinbai1 = tinbai;
            return PartialView();
        }
        public ActionResult TinHoatDong()
        {
            var tinbaihoatdong = (from a in obj.TinBais
                                  where a.MaLoaiTinBai == 2 && a.PheDuyet == true
                                  orderby a.NgayDang descending
                                  select a).Take(5).ToList();

            var tinbaimoinhat = tinbaihoatdong[0];
            tinbaihoatdong = tinbaihoatdong.Where(tb => tb != tinbaimoinhat).ToList();// bỏ cái mới nhất đi
            ViewBag.tinbaimoinhat = tinbaimoinhat;
            ViewBag.tinbaihoatdong = tinbaihoatdong;
            return PartialView();
        }
        public ActionResult GuongMatTieuBieu()
        {
            var tinbaihoatdong = (from a in obj.TinBais
                                  where a.MaLoaiTinBai == 1 && a.PheDuyet == true
                                  orderby a.NgayDang descending
                                  select a).Take(5).ToList();

            var tinbaimoinhat = tinbaihoatdong[0];
            tinbaihoatdong = tinbaihoatdong.Where(tb => tb != tinbaimoinhat).ToList();// bỏ cái mới nhất đi
            ViewBag.tinbaimoinhat = tinbaimoinhat;
            ViewBag.tinbaihoatdong = tinbaihoatdong;
            return PartialView();
        }
       
        public ActionResult TinHocTapNCKH()
        {
            var tinbaihoatdong = (from a in obj.TinBais
                                  where a.MaLoaiTinBai == 3 && a.PheDuyet == true
                                  orderby a.NgayDang descending
                                  select a).Take(5).ToList();

            var tinbaimoinhat = tinbaihoatdong[0];
            tinbaihoatdong = tinbaihoatdong.Where(tb => tb != tinbaimoinhat).ToList();// bỏ cái mới nhất đi
            ViewBag.tinbaimoinhat = tinbaimoinhat;
            ViewBag.tinbaihoatdong = tinbaihoatdong;
            return PartialView();
        }
        public ActionResult HinhAnhTieuBieu()
        {
            var hinhanh = obj.AnhTieuBieux.Take(9).ToList();
            ViewBag.hinhanh = hinhanh;
            return PartialView();
        }
        public ActionResult TinBaiTheoLoai(int id, int page)
        {
            var tinbaiList = GetTinBaiFromDatabase(id, page, 5); // mỗi trang hiển thị 5 tin, thích hiển thị bao nhiêu thì thay nhá , nhớ sửa cả đoạn sau
            var totalTinBai = GetTotalTinBaiCount(id);
            ViewBag.CurrentPage = page;
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalTinBai / 9 /*pageSize*/);
            ViewBag.PageSize = 9 /*pageSize*/;
            var loaitinbai = obj.LoaiTinBais.Find(id);
            //var tinbai = obj.TinBais.Where(s => s.MaLoaiTinBai == id).ToList();
            ViewBag.loaitinbai = loaitinbai.TenLoaiTinBai;
            ViewBag.tinbai = tinbaiList;
            return View();
        }
        public List<TinBai> GetTinBaiFromDatabase(int id, int page, int pageSize)
        {
            var tinBaiList = obj.TinBais.Where(s => s.MaLoaiTinBai == id)
                .Where( s => s.PheDuyet == true)
                .OrderByDescending(tinbai => tinbai.NgayDang)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();
            return tinBaiList;
        }
        public int GetTotalTinBaiCount(int id)
        {

            var totalTinBaiCount = obj.TinBais.Where(s => s.MaLoaiTinBai == id && s.PheDuyet == true).Count();
            return totalTinBaiCount;

        }
        public ActionResult ListTinBai()
        {
            var list = (from a in obj.TinBais
                     join b in obj.LoaiTinBais on a.MaLoaiTinBai equals b.MaLoaiTinbai
                     where a.PheDuyet == true
                     orderby a.NgayDang descending
                     select new TinBaiView()
                     {
                         MaTinBai = a.MaTinBai,
                         TieuDe = a.TieuDe,
                         NoiDungTomTat = a.NoiDungTomTat,
                         NgayDang = a.NgayDang,
                         LuotXem = a.LuotXem,
                         NguoiViet = a.NguoiViet,
                         DonVi = a.DonVi,
                         Img = a.Img,
                         LoaiTinBai = b.TenLoaiTinBai
                     }).ToList();
            ViewBag.list = list;
            return View();
        }
        public ActionResult ListTinBaiChuaPheDuyet()
        {
            var list = (from a in obj.TinBais
                        join b in obj.LoaiTinBais on a.MaLoaiTinBai equals b.MaLoaiTinbai
                        where a.PheDuyet == false
                        orderby a.NgayDang descending
                        select new TinBaiView()
                        {
                            MaTinBai = a.MaTinBai,
                            TieuDe = a.TieuDe,
                            NoiDungTomTat = a.NoiDungTomTat,
                            NgayDang = a.NgayDang,                          
                            NguoiViet = a.NguoiViet,
                            DonVi = a.DonVi,
                            Img = a.Img,
                            LoaiTinBai = b.TenLoaiTinBai
                        }).ToList();
            ViewBag.list = list;
            return View();
        }
        public ActionResult SuaTinBai(int id)
        {
            var tinbai = obj.TinBais.Find(id);
            var loaitinbai = obj.LoaiTinBais.ToList();
            ViewBag.loaitinbai = loaitinbai;
            ViewBag.tinbai = tinbai;
            return View();
        }
        [HttpPost]
        public ActionResult PheDuyetTinBai(int id)
        {
            var tinbai = obj.TinBais.Find(id);
            tinbai.PheDuyet = true;
            obj.SaveChanges();
            return Json(new
            {
                status = true,
            }, JsonRequestBehavior.AllowGet);        
        }
        [HttpPost]
        public ActionResult XoaTinBai(int id)
        {
            var tinbai = obj.TinBais.Find(id);
            obj.TinBais.Remove(tinbai);
            obj.SaveChanges();
            return Json(new
            {
                status = true,
            }, JsonRequestBehavior.AllowGet);
        }
        [UserAuthorize(quyen = new[] { 1 })]
        public ActionResult AddHinhAnh()
        {           
            return View();
        }
      
        public ActionResult AddTinBai()
        {
            var loaitinbai = obj.LoaiTinBais.ToList();
            ViewBag.loaitinbai = loaitinbai;
            return View();
        }
        [UserAuthorize(quyen = new[] { 3 })]
        public ActionResult AddTinBaiHoiVien()
        {
            var loaitinbai = obj.LoaiTinBais.ToList();
            ViewBag.loaitinbai = loaitinbai;
            return View();
        }
        [HttpPost]
        public ActionResult AddTinBaiHoiVien(string MaHV, TinBai tb, HttpPostedFileBase img, HttpPostedFileBase image2)
        {
            var tinbainew = new TinBai();
            if (img != null && img.ContentLength > 0)
            {
                string Anh1 = Path.GetFileName(img.FileName);
                tinbainew.Img = Anh1;
                string path = Path.Combine(Server.MapPath("/Assets/Sbadmin/img/"), Anh1);
                if (System.IO.File.Exists(path))
                {
                }
                else
                {
                    img.SaveAs(path);
                }
            }
            if (image2 != null && image2.ContentLength > 0)// cái nahr 2 này có thể có hoặc không, còn ảnh 1 bắt buộc phải có nên để reqired rồi :))
            {
                string Anh2 = Path.GetFileName(image2.FileName);
                tinbainew.Img1 = Anh2;
                tinbainew.imgtitle1 = tb.imgtitle1;
                string path = Path.Combine(Server.MapPath("/Assets/Sbadmin/img/"), Anh2);
                if (System.IO.File.Exists(path))
                {
                }
                else
                {
                    image2.SaveAs(path);
                }
            }
            else
            {
                tinbainew.Img1 = null;
                tinbainew.imgtitle1 = null;
            }
            
            tinbainew.NoiDung = tb.NoiDung;
            tinbainew.NguoiViet = obj.HoiViens.Find(MaHV).TenHV;
            tinbainew.DonVi = obj.DonVis.Find(obj.HoiViens.Find(MaHV).MaDV).TenDV;
            //string doubleLineBreak = Environment.NewLine + Environment.NewLine;// cái này là lúc thêm tin bài chỗ nội dung hay bị 2 cái xuống dòng nên tiện format luôn, hoặc chỉnh chay lúc thêm thành 1 cái xuống dóng thôi cũng được ahihi
            //if (tb.NoiDung.Contains(doubleLineBreak))
            //{
            //    tb.NoiDung = tb.NoiDung.Replace(doubleLineBreak, Environment.NewLine);
            //}
            //if (tb.NoiDung.Contains("\n"))
            //{
            //    string replacedString = tb.NoiDung.Replace("\n", "</blockquote><blockquote>&nbsp;&nbsp;&nbsp;&nbsp;"); // Thay thế '\n' 
            //    tinbainew.NoiDung = "<blockquote>&nbsp;&nbsp;&nbsp;&nbsp;" + replacedString + "</blockquote>";                      
            //    //Console.WriteLine("Replaced String:");
            //    //Console.WriteLine(replacedString);
            //}
            tinbainew.NoiDungTomTat = tb.NoiDung.Substring(0, 150) + "...";
            tinbainew.TieuDe = tb.TieuDe;
            tinbainew.MaLoaiTinBai = tb.MaLoaiTinBai;
            tinbainew.MaHV = MaHV;
            tinbainew.NgayDang = DateTime.Now;
            tinbainew.LuotXem = 0;
            tinbainew.imgtitle = tb.imgtitle;
            tinbainew.PheDuyet = false;
            obj.TinBais.Add(tinbainew);
            var loaitinbai = obj.LoaiTinBais.ToList();
            ViewBag.loaitinbai = loaitinbai;
            obj.SaveChanges();
            ViewBag.AlertMessage = "Tin bài của bạn đã dược gửi đi và đang chờ phê duyệt";
            return View();
        }
        [HttpPost]
        public ActionResult AddHinhAnh(string TieuDe, HttpPostedFileBase img)
        {
            AnhTieuBieu anh = new AnhTieuBieu();
            if (img != null || img.ContentLength > 0)
            {
                string Anh1 = Path.GetFileName(img.FileName);
                anh.UrlAnh = Anh1;
                string path = Path.Combine(Server.MapPath("/Assets/Sbadmin/img/"), Anh1);
                if (System.IO.File.Exists(path))
                {
                }
                else
                {
                    img.SaveAs(path);
                }
            }
            anh.TieuDe = TieuDe;
            anh.NgayDang = DateTime.Now;
            obj.AnhTieuBieux.Add(anh);
            obj.SaveChanges();
            return View();
        }

        [HttpPost]
        public ActionResult AddTinBai(TinBai tb, HttpPostedFileBase img, HttpPostedFileBase image2)
        {
            var tinbainew = new TinBai();
            if (img != null && img.ContentLength > 0)
            {
                string Anh1 = Path.GetFileName(img.FileName);
                tinbainew.Img = Anh1;
                string path = Path.Combine(Server.MapPath("/Assets/Sbadmin/img/"), Anh1);
                if (System.IO.File.Exists(path))
                {
                }
                else
                {
                    img.SaveAs(path);
                }
            }
            if (image2 != null && image2.ContentLength > 0)// cái nahr 2 này có thể có hoặc không, còn ảnh 1 bắt buộc phải có nên để reqired rồi :))
            {
                string Anh2 = Path.GetFileName(image2.FileName);
                tinbainew.Img1 = Anh2;
                tinbainew.imgtitle1 = tb.imgtitle1;
                string path = Path.Combine(Server.MapPath("/Assets/Sbadmin/img/"), Anh2);
                if (System.IO.File.Exists(path))
                {
                }
                else
                {
                    image2.SaveAs(path);
                }
            }
            else
            {
                tinbainew.Img1 = null;
                tinbainew.imgtitle1 = null;
            }
            tinbainew.NoiDung = tb.NoiDung;
            tinbainew.NguoiViet = tb.NguoiViet;
            tinbainew.DonVi = tb.DonVi;
            //string doubleLineBreak = Environment.NewLine + Environment.NewLine;// cái này là lúc thêm tin bài chỗ nội dung hay bị 2 cái xuống dòng nên tiện format luôn, hoặc chỉnh chay lúc thêm thành 1 cái xuống dóng thôi cũng được ahihi
            //if (tb.NoiDung.Contains(doubleLineBreak))
            //{
            //    tb.NoiDung = tb.NoiDung.Replace(doubleLineBreak, Environment.NewLine);
            //}
            //if (tb.NoiDung.Contains("\n"))
            //{
            //    string replacedString = tb.NoiDung.Replace("\n", "</blockquote><blockquote>&nbsp;&nbsp;&nbsp;&nbsp;"); // Thay thế '\n' 
            //    tinbainew.NoiDung = "<blockquote>&nbsp;&nbsp;&nbsp;&nbsp;" + replacedString + "</blockquote>";                      
            //    //Console.WriteLine("Replaced String:");
            //    //Console.WriteLine(replacedString);
            //}
            tinbainew.NoiDungTomTat = tb.NoiDung.Substring(0, 150) + "...";
            tinbainew.TieuDe = tb.TieuDe;
            tinbainew.MaLoaiTinBai = tb.MaLoaiTinBai;
            tinbainew.MaHV = "1";
            tinbainew.NgayDang = DateTime.Now;
            tinbainew.LuotXem = 0;
            tinbainew.imgtitle = tb.imgtitle;
            tinbainew.PheDuyet = true;
            obj.TinBais.Add(tinbainew);
            var loaitinbai = obj.LoaiTinBais.ToList();
            ViewBag.loaitinbai = loaitinbai;
            obj.SaveChanges();
            return View();
        }
    }
}