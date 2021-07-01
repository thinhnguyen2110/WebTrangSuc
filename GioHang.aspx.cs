using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["gh"] != null)
        {
            DataTable dt = (DataTable)Session["gh"];
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
   
}


    
