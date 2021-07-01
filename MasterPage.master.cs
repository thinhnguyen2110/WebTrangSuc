using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string masreach = TextBox1.Text;
        //string strcn = ConfigurationManager.ConnectionStrings["QL"].ToString();
        //SqlConnection cn = new SqlConnection(strcn);
        //string strcm = null;
        //if (masreach == "")
        //{
        //    strcm = "select MaSanPham, TenSP, HinhAnh, DonGia from  tbl_SanPham Where MaSanPham= N'" + masreach + "' or TenSP=N'" + masreach + "' ";
        //    {
        //        strcm = "select MaSanPham, TenSP, HinhAnh, DonGia from  tbl_SanPham Where MaSanPham= N'" + masreach + "' or TenSP=N'" + masreach + "' ";
        //    }
        //    SqlDataAdapter da = new SqlDataAdapter(strcm, cn);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds, "a");
        //    Datalist1.DataSource = ds.Tables["a"];
        //    DataList1.DataBind();
        }
    }
