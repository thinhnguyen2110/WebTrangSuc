﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChuaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strcn = ConfigurationManager.ConnectionStrings["QL"].ConnectionString;
            SqlConnection cn = new SqlConnection(strcn);

            string strsl = "select * from tbl_SanPham where MaSanPham <= N'15'";
            SqlDataAdapter da = new SqlDataAdapter(strsl, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }

    int Contain(DataTable dt, int m)
    {
        for (int i = 0; i < dt.Rows.Count; i++)
            if ((int)dt.Rows[i]["MASP"] == m)
                return i;
        return -1;
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //lấy mã sản phẩm
        int masp = int.Parse(e.CommandArgument.ToString());
        //lấy tên sản phẩm
        string tensp = ((HyperLink)e.Item.FindControl("HyperLink1")).Text;
        string gia = ((Label)e.Item.FindControl("Label3")).Text;
        string tenhinh = ((Image)e.Item.FindControl("Image1")).ImageUrl;
        if (Session["gh"] != null)// da co gio hang
        {
            DataTable arr = (DataTable)Session["gh"];
            //xay dựng hàm kiểm tra mã sản phẩm có trong arr chưa??
            int vt = Contain(arr, masp);
            if (vt == -1) //chua ton tại
            {
                //them 1 rows vào DataTable
                arr.Rows.Add(masp, tensp, gia, 1, null, tenhinh);
            }
            else
            {
                //cập nhật số lượng tại rows thứ vt với sl++;
                arr.Rows[vt]["SOLG"] = (int)arr.Rows[vt]["SOLG"] + 1;
            }
        }
        else ///chua có giỏ hàng
        {
            //khỏi tạo DataTable
            DataTable tbGioHang = new DataTable();
            tbGioHang.Rows.Clear();
            tbGioHang.Columns.Clear();
            tbGioHang.Columns.Add("MASP", typeof(int));
            tbGioHang.Columns.Add("TENSP", typeof(string));
            tbGioHang.Columns.Add("DONGIA", typeof(int));
            tbGioHang.Columns.Add("SOLG", typeof(int));
            tbGioHang.Columns.Add("TONG", typeof(int), "SOLG * DONGIA");
            tbGioHang.Columns.Add("HINHANH", typeof(string));
            //them 1 rows vào DataTable
            tbGioHang.Rows.Add(masp, tensp, gia, 1, null, tenhinh);//thông tin lấy từ sản phẩm được chọn
            //luu vào Session
            Session["gh"] = tbGioHang;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string masreach = TextBox1.Text;
        string strcn = ConfigurationManager.ConnectionStrings["QL"].ToString();
        SqlConnection cn = new SqlConnection(strcn);
        string strcm = null;
        if (masreach != null)
        {
            strcm = "select MaSanPham, TenSP, HinhAnh, DonGia from  tbl_SanPham Where ( TenSP=N'" + masreach + "') ";
        }
        //else if (masreach != "")
        //    {
        //        strcm = "select MaSanPham, TenSP, HinhAnh, DonGia from  tbl_SanPham Where MaSanPham= N'" + masreach + "' or TenSP=N'" + masreach + "' ";
        //    }
        SqlDataAdapter da = new SqlDataAdapter(strcm, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        DataList1.DataSource = ds.Tables["a"];
        DataList1.DataBind();
    }
}

    
    
        

    
    
