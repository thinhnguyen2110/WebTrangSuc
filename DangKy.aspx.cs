using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    int DemSL()
    {
        String strcn = ConfigurationManager.ConnectionStrings["QL"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        string strsel = "select count(*) from DangNhap";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int sl = (int)cmd.ExecuteScalar();
        cn.Close();
        return sl;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["QL"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        string strsel = "select count(*) from DangNhap where Email = '" + Mail.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int user = (int)cmd.ExecuteScalar();
        if (user == 0)
        {
            int sl = DemSL();
            int i = sl + 1;
            String strcmd = "insert into DangNhap values('" + Mail.Text + "','" + Password.Text + "',N'" + HovaTen.Text + "','" + SoDT.Text + "')";
            cmd.CommandText = strcmd;
            int rs = cmd.ExecuteNonQuery();
            if (rs != 0)
            {
                Label1.Text = "Ðang ký thành công";
            }
        }
        else
        {
            Label1.Text = "Email này dã có người đăng ký";
        }

        cn.Close();
    }
}