using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for XayDung
/// </summary>
public class XayDung
{
        private int idXoa = -1;
        //Khởi tạo giỏ hàng
        public DataTable giohang = new DataTable();
        public void CreateItem()
        {
            giohang.Columns.Add("MaTS");
            giohang.Columns.Add("TenTS");
            giohang.Columns.Add("HinhAnh");
            giohang.Columns.Add("KhuyenMai");
            giohang.Columns.Add("SoLuongDaLuu");
        }

        //Thêm sản phẩm vào giỏ hàng
        public Boolean themSanPhamVaoGio(int MaTS, string TenTS, string HinhAnh, int KhuyenMai, int SoLuongDaLuu)
        {
            Boolean flag = false;
            foreach (DataRow d in giohang.Rows)
            {
                if (int.Parse(d[0].ToString()) == MaTS)
                {
                    d[4] = int.Parse(d[4].ToString()) + SoLuongDaLuu;
                    flag = true;
                }
            }
            if (!flag && MaTS != idXoa)
            {
                idXoa = -1;
                DataRow dong = giohang.NewRow();
                dong[0] = MaTS;
                dong[1] = TenTS;
                dong[2] = HinhAnh;
                dong[3] = KhuyenMai;
                dong[4] = SoLuongDaLuu;
                giohang.Rows.Add(dong);
                return true;
            }
            return false;
        }

        //Tính tổng tiền của giỏ hàng
        public int tongThanhTien()
        {
            int a = 0;
            foreach (DataRow d in giohang.Rows)
            {
                a = a + int.Parse(d[3].ToString()) * int.Parse(d[4].ToString());
            }
            return a;
        }

        public Boolean DeleteProduct(int MaGiay)
        {
            foreach (DataRow d in giohang.Rows)
            {
                if (int.Parse(d[0].ToString()) == MaGiay)
                {
                    idXoa = MaGiay;
                    giohang.Rows.Remove(d);
                    return true;
                }
            }
            return false;
        }
        public int GetRow()
        {
            return giohang.Rows.Count;
        }
	}
