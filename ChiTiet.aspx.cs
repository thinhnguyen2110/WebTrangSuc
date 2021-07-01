using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChiTiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ten = Request.QueryString["TenSP"];
            string masp = Request.QueryString["masp"];
            string ml = Request.QueryString["ml"];
            string strcn = ConfigurationManager.ConnectionStrings["QL"].ToString();
            SqlConnection cn = new SqlConnection(strcn);
            strcn = "select HinhAnh,TenSP,MaSanPham,DonGia   from tbl_SanPham where MaSanPham='" + masp + "'";
   

            SqlDataAdapter da = new SqlDataAdapter(strcn, cn);


            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            DataList1.DataSource = ds.Tables["a"];
            DataList1.DataBind();


        }
    }  
  
}