using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Web_Girls.Models.ModelsView;
using Web_Girls.Models.Context;
using Web_Girls.App_Start;
using System.Security.Cryptography;
using System.Text;

namespace Web_Girls.Controllers
{
    public class AccountController : Controller
    {
        MyContext obj = new MyContext();


        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;

            //nếu bạn muốn các chữ cái in thường thay vì in hoa thì bạn thay chữ "X" in hoa trong "X2" thành "x"
        }
        public ActionResult Login()
        {
            string Khoa = TempData["Khoa"] as string;
            ViewBag.Khoa = Khoa;
            string Sai = TempData["Sai"] as string;
            ViewBag.Sai = Sai;
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(string tendn, string password)
        {
            string f_mk = GetMD5(password);
            var data = obj.TaiKhoans.Where(s => s.TenDN.Equals(tendn) && s.MatKhau.Equals(f_mk)).FirstOrDefault();
            if (data != null)
            {
                if (data.Khoa == true)
                {
                    TempData["Khoa"] = "Tài khoản của bạn đã bị khóa";
                    return RedirectToAction("Login");
                    //return Json(new
                    //{
                    //    status = true,
                    //    data = "0"

                    //}, JsonRequestBehavior.AllowGet);
                }
                else if (data.Khoa == false)
                {

                    var it = obj.HoiViens.Find(data.MaHV);
                    Session["Ma"] = data.MaHV;
                    Session["Ten"] = it.TenHV;
                    Session["Quyen"] = data.Quyen;
                    Session["MaHoi"] = it.MaHPN;
                    return RedirectToAction("TrangChu");

                    //return Json(new
                    //{
                    //    status = true,
                    //    data = "1"
                    //}, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                TempData["Sai"] = "Tên đăng nhập hoặc mật khẩu chưa chính xác";
                return RedirectToAction("Login");
                //return Json(new
                //{
                //    status = false
                //}, JsonRequestBehavior.AllowGet);
            }
            return View();
            //return Json(new
            //{
            //    //status = true,
            //    //data = 1
            //}, JsonRequestBehavior.AllowGet);
        }
        public JsonResult CheckSession()
        {
            bool sessionValid = Session["Ten"] != null;
            return Json(new { success = sessionValid }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult TrangChu()
        {
            var tinbai = obj.TinBais.OrderByDescending(s => s.NgayDang).Take(6).ToList();
            ViewBag.list = tinbai;
            return View();
        }
        public ActionResult ChiTiet(int id)
        {
            var tinbai = obj.TinBais.Find(id);
            string tenimg = tinbai.Img;
            string imgtitle = tinbai.imgtitle;
            tinbai.LuotXem += 1;
            obj.SaveChanges();
            string doubleLineBreak = Environment.NewLine + Environment.NewLine;// cái này là lúc thêm tin bài chỗ nội dung hay bị 2 cái xuống dòng nên tiện format luôn, hoặc chỉnh chay lúc thêm thành 1 cái xuống dóng thôi cũng được ahihi
            if (tinbai.NoiDung.Contains(doubleLineBreak))
            {
                tinbai.NoiDung = tinbai.NoiDung.Replace(doubleLineBreak, Environment.NewLine);
            }
            if (tinbai.NoiDung.Contains("\n"))
            {
                string replacedString = tinbai.NoiDung.Replace("\n", "</blockquote><blockquote>&nbsp;&nbsp;&nbsp;&nbsp;"); // Thay thế '\n' bằng các thẻ định dạng đoạn văn là cái cuối của đoạn trước và cái đầu của đoạn sau
                tinbai.NoiDung = "<blockquote>&nbsp;&nbsp;&nbsp;&nbsp;" + replacedString + "</blockquote>"; // thêm vào đầu và cuối

            }
            string targetSubstring = "</blockquote><blockquote>&nbsp;&nbsp;&nbsp;&nbsp;";
            string replacement = "</blockquote><img class=\"img-center\"src=\"/Assets/Sbadmin/img/" + tenimg + "\" alt=\"\"> <div style=\"text-align: center; font-style: italic; \">Ảnh:" + imgtitle + "</div><blockquote>&nbsp;&nbsp;&nbsp;&nbsp;";
            int secondOccurrenceIndex = tinbai.NoiDung.IndexOf(targetSubstring, tinbai.NoiDung.IndexOf(targetSubstring) + 1); // đây là chèn ảnh vào sau đoạn thứ 2 và đầu đoạn thứ 3
            if (secondOccurrenceIndex != -1)
            {
                tinbai.NoiDung = tinbai.NoiDung.Remove(secondOccurrenceIndex, targetSubstring.Length)
                                         .Insert(secondOccurrenceIndex, replacement);
            }
            else
            {
                tinbai.NoiDung = tinbai.NoiDung + "<img class=\"img-center\" src=\"/Assets/Sbadmin/img/" + tenimg + "\" alt=\"\"> <div style=\"text-align: center; font-style: italic; \">Ảnh: " + imgtitle + "</div>";
            }
            if (tinbai.Img1 != null)
            {
                string tenimg1 = tinbai.Img1;
                string imgtitle1 = tinbai.imgtitle1;
                string replacement1 = "</blockquote><img class=\"img-center\" src=\"/Assets/Sbadmin/img/" + tenimg1 + "\" alt=\"\"> <div style=\"text-align: center; font-style: italic; \">Ảnh: " + imgtitle1 + "</div><blockquote>&nbsp;&nbsp;&nbsp;&nbsp;";

                int fourthOccurrenceIndex = tinbai.NoiDung.IndexOf(targetSubstring, (secondOccurrenceIndex + targetSubstring.Length) + 1);
                if (fourthOccurrenceIndex != -1)
                {
                    string result = tinbai.NoiDung.Remove(fourthOccurrenceIndex, targetSubstring.Length).Insert(fourthOccurrenceIndex, replacement1);
                    tinbai.NoiDung = result;
                }
                else
                {
                    tinbai.NoiDung = tinbai.NoiDung + "<img class=\"img-center\" src=\"/Assets/Sbadmin/img/" + tenimg1 + "\" alt=\"\"> <div style=\"text-align: center; font-style: italic; \">Ảnh: " + imgtitle1 + "</div>";
                }
            }
            else
            {

            }
            //tinbai.NoiDung = tinbai.NoiDung;
            //obj.SaveChanges();
            var tinbailienquan = obj.TinBais.Where(s => s.MaLoaiTinBai == tinbai.MaLoaiTinBai && s.MaTinBai != tinbai.MaTinBai).Take(3).ToList();// lấy tin bài cùng chủ đề nhưng khác tin hiện tại
            ViewBag.tinbailienquan = tinbailienquan;
            var loaitinbai = obj.LoaiTinBais.Find(tinbai.MaLoaiTinBai);
            ViewBag.loaitinbai = loaitinbai;
            ViewBag.tinbai = tinbai;
            return View();
        }

        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            //if (Request.Cookies["hv"] != null)
            //{
            //    Response.Cookies["hv"].Expires = DateTime.Now.AddDays(-1);
            //}
            return RedirectToAction("TrangChu");

        }

        [UserAuthorize(quyen = new[] { 1 })]
        public ActionResult TrangQuanTriCapHV()
        {
            return View();
        }
        [UserAuthorize(quyen = new[] { 2 })]
        public ActionResult TrangQuanTriCapHoi()
        {
            return View();
        }
        [UserAuthorize(quyen = new[] { 1, 2, 3 })]
        public ActionResult TrangQuanTriCaNhan()
        {
            return View();
        }
        [UserAuthorize(quyen = new[] { 1 })]
        public ActionResult TatCaTaiKhoan()
        {
            var kq = from a in obj.TaiKhoans
                     join b in obj.HoiViens on a.MaHV equals b.MaHV
                     where b.GioiTinh == false
                     select new TaiKhoanView
                     {
                         TenDN = a.TenDN,
                         MaHV = a.MaHV,
                         MatKhau = a.MatKhau,
                         EditTime = a.EditTime,
                         TenHV = b.TenHV,
                         Khoa = a.Khoa,
                         Quyen = a.Quyen
                     };
            string OK = TempData["OK"] as string;
            ViewBag.OK = OK;
            ViewBag.dstk = kq.ToList();
            return View();
        }

        public ActionResult LockAccount(string ma)
        {
            var tk = obj.TaiKhoans.Where(s => s.MaHV == ma).FirstOrDefault();
            tk.Khoa = true;
            obj.SaveChanges();
            return RedirectToAction("TatCaTaiKhoan");

        }

        public ActionResult UnLockAccount(string ma)
        {
            var tk = obj.TaiKhoans.Where(s => s.MaHV == ma).FirstOrDefault();
            tk.Khoa = false;
            obj.SaveChanges();
            return RedirectToAction("TatCaTaiKhoan");
        }
        public ActionResult KhongCoQuyen()
        {
            return View();
        }
        [UserAuthorize(quyen = new[] { 1, 2, 3 })]
        public ActionResult ThayDoiMK()
        {
            string a = TempData["a"] as string;
            ViewBag.a = a;
            string Sai = TempData["Sai"] as string;
            ViewBag.Sai = Sai;
            string OK = TempData["OK"] as string;
            ViewBag.OK = OK;
            return View();
        }
        [HttpPost]
        public ActionResult ChangePass(string Ma, string MatKhauCu, string MatKhauMoi, string MatKhauMoiLai)
        {
            var tk = obj.TaiKhoans.Where(s => s.MaHV == Ma).FirstOrDefault();
            if (GetMD5(MatKhauCu) != tk.MatKhau)
            {
                TempData["a"] = "Mật khẩu hiện tại của bạn không đúng";
                return RedirectToAction("ThayDoiMK");
            }
            if (MatKhauMoi != MatKhauMoiLai)
            {
                TempData["Sai"] = "Mật khẩu nhập lại không đúng";
                return RedirectToAction("ThayDoiMK");
            }

            tk.MatKhau = GetMD5(MatKhauMoi);
            obj.SaveChanges();
            TempData["OK"] = "Thay đổi mật khẩu thành công";
            return RedirectToAction("ThayDoiMK");
        }
        public ActionResult CapNhatQuyen(string ma)
        {
            var tk = obj.TaiKhoans.Find(ma);
            var hv = obj.HoiViens.Find(tk.MaHV);
            ViewBag.tk = tk;
            ViewBag.hv = hv;
            return PartialView();
        }
        [HttpPost]
        public ActionResult CapNhatQuyen(string TenDN, int Quyen)
        {
            var tk = obj.TaiKhoans.Find(TenDN);
            tk.Quyen = Quyen;
            obj.SaveChanges();
            TempData["OK"] = "Cập nhật thành công";
            return RedirectToAction("TatCaTaiKhoan");
        }


    }
}