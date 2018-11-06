using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class empcpass : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["empid"] != null)
        {

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void Submit_btn_Click(object sender, EventArgs e)
    {
        DataTable dt = da.extable("select * from emplogin where lid='"+Session["empid"]+"'");
        if (dt.Rows.Count != 0)
        {
            string oldpassa = dt.Rows[0]["password"].ToString();
            string oldpassb = oldpass.Text;
            if (oldpassa == oldpassb)
            {
                da.exnon("update emplogin set password='" + newpass.Text + "' where lid='" + Session["empid"] + "'");
                Response.Write("<script>alert('Password Succesfully Changed')</script>");
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Old password')</script>");
            }
        }
    }
    protected void back_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}