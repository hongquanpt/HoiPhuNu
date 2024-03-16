using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_Girls.Models.Context;
using Web_Girls.Models.ModelsView;

namespace Web_Girls.Controllers
{
    public class CongVanController : Controller
    {
        MyContext obj = new MyContext();
        // GET: CongVan
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult GuiCongVan()
        {
            var list = obj.HoiPhuNus.ToList();
            ViewBag.list = list;
            string successMessage = TempData["SuccessMessage"] as string;
            ViewBag.message = successMessage;
            string Loi = TempData["Loia"] as string;
            ViewBag.Loi = Loi;
            return View();
        }
        [HttpPost]
        public ActionResult GuiCongVan(string NoiNhan, int NoiGui, string TieuDe, string NoiDung, HttpPostedFileBase file)
        {
            List<string> stringList = new List<string>();
            if (!string.IsNullOrEmpty(NoiNhan))
            {
                // Tách chuỗi thành mảng các chuỗi, sử dụng dấu phẩy làm dấu phân cách
                string[] stringArray = NoiNhan.Split(',');

                // Thêm từng chuỗi vào danh sách
                foreach (string item in stringArray)
                {
                    stringList.Add(item);
                }
            }
            else
            {
                TempData["Loia"] = "Vui lòng chọn nơi nhận";
                return RedirectToAction("GuiCongVan");
            }
            string url = "";
            if (file != null && file.ContentLength > 0)
            {
                url = Path.GetFileName(file.FileName);
                string path = Path.Combine(Server.MapPath("/Assets/CongVan/"), url);
                file.SaveAs(path);
            }
            CongVanBaoCao cvbc = new CongVanBaoCao();
            cvbc.TieuDe = TieuDe;
            cvbc.NoiDung = NoiDung;
            cvbc.NoiGui = 0;
            cvbc.ThoiGianGui = DateTime.Now;
            cvbc.TepDinhKem = url;
            cvbc.DaXem = false;
            obj.CongVanBaoCaos.Add(cvbc);
            foreach (var chihoi in stringList)
            {
                NoiNhan a = new NoiNhan();
                a.MaCongVan = cvbc.Ma;
                a.MaHPN = Int32.Parse(chihoi);
                obj.NoiNhans.Add(a);
            }
            obj.SaveChanges();
            TempData["SuccessMessage"] = "Đã gửi thành công.";
            return RedirectToAction("GuiCongVan");
        }
        public ActionResult GuiCongVanCapHoi(int ma)
        {
            var list = obj.HoiPhuNus.Where(s => s.MaHPN != ma).ToList();
            ViewBag.list = list;
            string successMessage = TempData["SuccessMessage"] as string;
            ViewBag.message = successMessage;
            string Loi = TempData["Loi"] as string;
            ViewBag.Loi = Loi;
            return View();
        }
        [HttpPost]
        public ActionResult GuiCongVanCapHoi(string NoiNhan, string TieuDe, string NoiDung, HttpPostedFileBase file)
        {
            List<string> stringList = new List<string>();
            if (!string.IsNullOrEmpty(NoiNhan))
            {             
                // Tách chuỗi thành mảng các chuỗi, sử dụng dấu phẩy làm dấu phân cách
                string[] stringArray = NoiNhan.Split(',');

                // Thêm từng chuỗi vào danh sách
                foreach (string item in stringArray)
                {
                    stringList.Add(item);
                }
            }
            else
            {
                TempData["Loi"] = "Vui lòng chọn nơi nhận";
                return RedirectToAction("GuiCongVanCapHoi",new { ma = Session["MaHoi"]});
            }        
            string url = "";
            if (file != null && file.ContentLength > 0)
            {
                url = Path.GetFileName(file.FileName);
                string path = Path.Combine(Server.MapPath("/Assets/CongVan/"), url);
                file.SaveAs(path);
            }
            CongVanBaoCao cvbc = new CongVanBaoCao();
            cvbc.TieuDe = TieuDe;
            cvbc.NoiDung = NoiDung;
            cvbc.NoiGui = Int32.Parse(Session["MaHoi"].ToString());
            cvbc.ThoiGianGui = DateTime.Now;
            cvbc.TepDinhKem = url;
            cvbc.DaXem = false;
            obj.CongVanBaoCaos.Add(cvbc);
            foreach (var chihoi in stringList)
            {
                NoiNhan a = new NoiNhan();
                a.MaCongVan = cvbc.Ma;
                a.MaHPN = Int32.Parse(chihoi);
                obj.NoiNhans.Add(a);
            }
            obj.SaveChanges();
            TempData["SuccessMessage"] = "Đã gửi thành công.";
            return RedirectToAction("GuiCongVanCapHoi", new { ma = Int32.Parse(Session["MaHoi"].ToString()) });
        }
        public ActionResult GuiDenCapHoi(int ma)
        {
            var list = (from a in obj.CongVanBaoCaos
                        join b in obj.NoiNhans on a.Ma equals b.MaCongVan
                        where b.MaHPN == ma
                        orderby a.ThoiGianGui ascending
                        select a).ToList();
            List<CongVanView> listcv = new List<CongVanView>();
            foreach (var item in list)
            {
                var cv = new CongVanView()
                {
                    Ma = item.Ma,
                    NoiGui = (item.NoiGui == 0) ? "Hội Phụ nữ Học viện" : obj.HoiPhuNus.Find(item.NoiGui).TenHPN,
                    ThoiGianGui = item.ThoiGianGui,
                    TieuDe = item.TieuDe,
                    NoiDung = item.NoiDung,
                    DaXem = item.DaXem,
                };
                listcv.Add(cv);
            }
            ViewBag.list = listcv;
            return View();
        }
        public ActionResult GuiDenCapHV()
        {
            var list = (from a in obj.CongVanBaoCaos
                        join b in obj.NoiNhans on a.Ma equals b.MaCongVan
                        where b.MaHPN == 0
                        orderby a.ThoiGianGui ascending
                        select a).ToList();
            List<CongVanView> listcv = new List<CongVanView>();
            foreach (var item in list)
            {
                var cv = new CongVanView()
                {
                    Ma = item.Ma,
                    NoiGui = obj.HoiPhuNus.Find(item.NoiGui).TenHPN,
                    ThoiGianGui = item.ThoiGianGui,
                    TieuDe = item.TieuDe,
                    NoiDung = item.NoiDung,
                    DaXem = item.DaXem,
                };
                listcv.Add(cv);
            }
            ViewBag.list = listcv;
            return View();
        }
        public ActionResult DaGui(int ma)
        {
            var list = (from a in obj.CongVanBaoCaos
                        where a.NoiGui == ma
                        orderby a.ThoiGianGui descending
                        select a).ToList();
            List<CongVanView> listcv = new List<CongVanView>();
            foreach (var item in list)
            {
                string GuiDen = "";
                var listbc = obj.NoiNhans.Where(s => s.MaCongVan == item.Ma).ToList();
                foreach (var it in listbc)
                {
                    if (it.MaHPN == 0)
                    {
                        GuiDen += "Hội Phụ nữ Học viện; ";
                    }
                    else
                    {
                        GuiDen += obj.HoiPhuNus.Find(it.MaHPN).TenHPN + "; ";
                    }
                }
                var cv = new CongVanView()
                {
                    Ma = item.Ma,
                    NoiGui = GuiDen,
                    ThoiGianGui = item.ThoiGianGui,
                    TieuDe = item.TieuDe,
                    NoiDung = item.NoiDung,
                    DaXem = item.DaXem,
                };
                listcv.Add(cv);
            }
            ViewBag.list = listcv;


            return View();
        }
        public ActionResult ChiTiet(int ma)
        {
            var cv = obj.CongVanBaoCaos.Find(ma);
            string NoiGui = (cv.NoiGui == 0) ? "Hội Phụ nữ Học viện" : obj.HoiPhuNus.Find(cv.NoiGui).TenHPN;
            string GuiDen = "";
            var list = obj.NoiNhans.Where(s => s.MaCongVan == ma).ToList();
            foreach (var item in list)
            {
                if (item.MaHPN == 0)
                {
                    GuiDen += "Hội Phụ nữ Học viện; ";
                }
                else
                {
                    GuiDen += obj.HoiPhuNus.Find(item.MaHPN).TenHPN + "; ";
                }

            }
            ViewBag.cv = cv;
            ViewBag.noigui = NoiGui;
            ViewBag.noinhan = GuiDen;
            if (cv.DaXem == false) cv.DaXem = true;
            obj.SaveChanges();
            return View();
        }
        public ActionResult ChiTietGui(int ma)
        {
            var cv = obj.CongVanBaoCaos.Find(ma);
            string NoiGui = (cv.NoiGui == 0) ? "Hội Phụ nữ Học viện" : obj.HoiPhuNus.Find(cv.NoiGui).TenHPN;
            string GuiDen = "";
            var list = obj.NoiNhans.Where(s => s.MaCongVan == ma).ToList();
            foreach (var item in list)
            {
                if (item.MaHPN == 0)
                {
                    GuiDen += "Hội Phụ nữ Học viện; ";
                }
                else
                {
                    GuiDen += obj.HoiPhuNus.Find(item.MaHPN).TenHPN + "; ";
                }

            }
            ViewBag.cv = cv;
            ViewBag.noigui = NoiGui;
            ViewBag.noinhan = GuiDen;
            if (cv.DaXem == false) cv.DaXem = true;
            obj.SaveChanges();
            return View();
        }
        //public ActionResult DownloadFile(string file)
        //{
        //    // Đường dẫn tới file Word
        //     string path = Path.Combine(Server.MapPath("/Assets/CongVan/"), file);

        //    // Kiểm tra xem file có tồn tại không

        //    // Tạo một FileResult để trả về file
        //    return File(path, "application/vnd.openxmlformats-officedocument.wordprocessingml.document", file);

        //}
        public ActionResult SoLuongCongVanChuaXem(int ma)
        {
            var list = (from a in obj.CongVanBaoCaos
                        join b in obj.NoiNhans on a.Ma equals b.MaCongVan
                        where b.MaHPN == ma && a.DaXem == false
                        select a).ToList();
            ViewBag.soluong = list.Count();
            return PartialView();
        }








    }
}