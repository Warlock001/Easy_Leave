using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class adminlogin : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        DataTable dt = da.extable("select * from adminlogin where username='" + username_txt.Text + "' and password='" + pass_txt.Text + "'");
        if (dt.Rows.Count != 0)
        {
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Response.Write("<script> alert('Invalid Password'); </script>");
        }
    }
}