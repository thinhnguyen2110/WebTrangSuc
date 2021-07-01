using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String strcn = ConfigurationManager.ConnectionStrings["QL"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        SqlDataAdapter adapter = new SqlDataAdapter();
        cn.Open();
        String strcmd = "select count(*) from DangNhap Where Email = '" + emaillog.Text + "' and Mk = '" + matkhau.Text + "' ";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        adapter.SelectCommand = new SqlCommand(strcmd, cn);
        int user = (int)adapter.SelectCommand.ExecuteScalar();
        cmd.Dispose();
        if (user != 0)
        {
            using (SqlDataAdapter da = new SqlDataAdapter(strcmd, cn))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
            }
            Response.Redirect("~/TrangChuaspx.aspx");
        }
        else
        {
            Label1.Text = "User không tồn tại hoặc sai mật khẩu";
        }
        cn.Close();
       
    }
    
}

    