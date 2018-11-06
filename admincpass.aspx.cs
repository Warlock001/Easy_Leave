using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admincpass : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["adminid"] != null)
        {

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void Submit_btn_Click(object sender, EventArgs e)
    {
        DataTable dt = da.extable("select * from adminlogin");
        string oldpassa = dt.Rows[0]["password"].ToString();
        string oldpassb = oldpass.Text;
        if (oldpassa == oldpassb)
        {
            da.exnon("update adminlogin set password='" + newpass.Text + "'");
            Response.Write("<script>alert('Password Succesfully Changed')</script>");
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Old password')</script>");
        }
    }

    protected void back_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}