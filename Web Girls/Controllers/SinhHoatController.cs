using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web_Girls.Models.ModelsView;
using Web_Girls.Models.Context;
using System.Data.Entity;

namespace Web_Girls.Controllers
{
    public class SinhHoatController : Controller
    {
        MyContext obj = new MyContext();

        public ActionResult Index(int ma)
        {
            if (ma == 0)
            {
                var sinhhoat = (from a in obj.SinhHoats
                                join b in obj.LoaiSinhHoats on a.MaLoaiSinhHoat equals b.MaLoaiSinhHoat
                                join c in obj.HoiPhuNus on a.MaHPN equals c.MaHPN
                                orderby a.NgaySinhHoat descending
                                select new SinhHoatView()
                                {
                                    Ma = a.MaSinhHoat,
                                    TenSinhHoat = b.TenSinhHoat,
                                    NgaySinhHoat = a.NgaySinhHoat,
                                    SoLuongVang = a.SoLuongVang,
                                    MaHoi = a.MaHPN,
                                    MaLoaiSinhHoat = b.MaLoaiSinhHoat,
                                    NoiDung = a.NoiDung,
                                }).ToList();
                var hoivienList = (from hv in obj.HoiViens
                                   join hpn in obj.HoiPhuNus on hv.MaHPN equals hpn.MaHPN
                                   select new HoiVienHPNView()
                                   {
                                       MaHV = hv.MaHV,
                                       TenHV = hv.TenHV,
                                       NgaySinh = hv.NgaySinh,
                                   }).ToList();
                foreach (var item in sinhhoat)
                {
                    if (item.MaHoi == 0)
                    {
                        item.DVToChuc = "HPN Học viện";
                    }
                    else
                    {
                        item.DVToChuc = obj.HoiPhuNus.Find(item.MaHoi).TenHPN;
                    }
                }
                var loaisinhhoat = obj.LoaiSinhHoats.ToList();
                ViewBag.loaisinhhoat = loaisinhhoat;
                ViewBag.sinhhoat = sinhhoat;
                ViewBag.hoivienList = hoivienList;
                return View();
            }
            else
            {
                 var hoivienList = (from hv in obj.HoiViens
                                    join hpn in obj.HoiPhuNus on hv.MaHPN equals hpn.MaHPN
                                    where hv.MaHPN == ma
                                    select new HoiVienHPNView()
                                    {
                                        MaHV = hv.MaHV,
                                        TenHV = hv.TenHV,
                                        NgaySinh = hv.NgaySinh,
                                    }).ToList();
                var sinhhoat = (from a in obj.SinhHoats
                                join b in obj.LoaiSinhHoats on a.MaLoaiSinhHoat equals b.MaLoaiSinhHoat
                                join c in obj.HoiPhuNus on a.MaHPN equals c.MaHPN
                                where a.MaHPN == ma || a.MaHPN == 0
                                orderby a.NgaySinhHoat descending
                                select new SinhHoatView()
                                {

                                    Ma = a.MaSinhHoat,
                                    TenSinhHoat = b.TenSinhHoat,
                                    NgaySinhHoat = a.NgaySinhHoat,
                                    SoLuongVang = a.SoLuongVang,
                                    MaHoi = a.MaHPN,
                                    MaLoaiSinhHoat = b.MaLoaiSinhHoat,
                                    NoiDung = a.NoiDung,
                                }).ToList();
                foreach (var item in sinhhoat)
                {
                    if (item.MaHoi == 0)
                    {
                        item.DVToChuc = "HPN Học viện";
                    }
                    else
                    {
                        item.DVToChuc = obj.HoiPhuNus.Find(item.MaHoi).TenHPN;
                    }
                }
                var loaisinhhoat = obj.LoaiSinhHoats.ToList();
                ViewBag.loaisinhhoat = loaisinhhoat;
                ViewBag.sinhhoat = sinhhoat;
                ViewBag.hoivienList = hoivienList;
                return View();
            }

        }
        public ActionResult ThamGia(int ma)
        {
            var noidung = obj.SinhHoats.FirstOrDefault(item => item.MaSinhHoat == ma);
            var thamgia = (from a in obj.SinhHoats
                           where a.MaSinhHoat == ma
                           select a).ToList();
            ViewBag.noidung = noidung;
            ViewBag.thamgia = thamgia;
            return PartialView();
        }


        [HttpPost]
        public ActionResult ThemSinhHoat(int TenSH, DateTime NgaySH, int? SoLuongVang, string noidung, int MaHPN)
        {
            try
            {
                if (MaHPN != 0)
                {
                    SinhHoat sh = new SinhHoat();
                    sh.MaHPN = MaHPN;
                    sh.MaLoaiSinhHoat = TenSH;
                    sh.NgaySinhHoat = NgaySH;
                    sh.NoiDung = noidung;
                    sh.SoLuongVang = SoLuongVang;
                    obj.SinhHoats.Add(sh);
                    obj.SaveChanges();
                }
                 else
                {
                    SinhHoat sh = new SinhHoat();
                    sh.MaHPN = 0;
                    sh.MaLoaiSinhHoat = TenSH;
                    sh.NgaySinhHoat = NgaySH;
                    sh.NoiDung = noidung;
                    sh.SoLuongVang = SoLuongVang;
                    obj.SinhHoats.Add(sh);
                    obj.SaveChanges();
                }
                   
                return Json(new
                {
                    status = true
                }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new
                {
                    status = false
                }, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult SuaSinhHoat(int ma)
        {
            var sh = obj.SinhHoats.Find(ma);
            ViewBag.sh = sh;
            var loaish = obj.LoaiSinhHoats.ToList(); 
            ViewBag.loaish = loaish;
            return PartialView();
        }
        [HttpPost]
        public ActionResult SuaSinhHoat(SinhHoat sh, int MaHoi)
        {
            var shSua = obj.SinhHoats.Find(sh.MaSinhHoat);
            shSua.NgaySinhHoat = sh.NgaySinhHoat;
            shSua.NoiDung = sh.NoiDung;
            shSua.SoLuongVang = sh.SoLuongVang;
            obj.SaveChanges();
            return RedirectToAction("Index", new { ma = MaHoi });
        }
        public ActionResult XoaSinhHoat(int ma)
        {
            try
            {
                var sinhhoat = obj.SinhHoats.Find(ma);
                obj.SinhHoats.Remove(sinhhoat);
                obj.SaveChanges();
                return Json(new
                {
                    status = true,
                }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new
                {
                    status = false,
                }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult IndexLoai(int ma)
        {
                var loaisinhhoat = obj.LoaiSinhHoats.ToList();
                ViewBag.loaisinhhoat = loaisinhhoat;
                return View();
        }
        [HttpPost]
        public ActionResult ThemLoaiSH(string TenSH)
        {
            try
            {
               
                    LoaiSinhHoat sh = new LoaiSinhHoat();
                    sh.TenSinhHoat = TenSH;
                    obj.LoaiSinhHoats.Add(sh);
                    obj.SaveChanges();
                return Json(new
                {
                    status = true
                }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new
                {
                    status = false
                }, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult SuaLoaiSinhHoat(int ma)
        {
            var loaish = obj.LoaiSinhHoats.Find(ma);
            ViewBag.loaish = loaish;
            return PartialView();
        }
        [HttpPost]
        public ActionResult SuaLoaiSinhHoat(LoaiSinhHoat loaish, int MaHoi)
        {
            var shSua = obj.LoaiSinhHoats.Find(loaish.MaLoaiSinhHoat);
            shSua.TenSinhHoat = loaish.TenSinhHoat;
            obj.SaveChanges();
            return RedirectToAction("IndexLoai", new { ma = MaHoi });
        }
        public ActionResult XoaLoaiSinhHoat(int ma)
        {
            try
            {
                var sinhhoat = obj.LoaiSinhHoats.Find(ma);
                obj.LoaiSinhHoats.Remove(sinhhoat);
                obj.SaveChanges();
                return Json(new
                {
                    status = true,
                }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new
                {
                    status = false,
                }, JsonRequestBehavior.AllowGet);
            }
        }

    }

}