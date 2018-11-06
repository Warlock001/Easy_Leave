using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admindatains : System.Web.UI.Page
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

    protected void goback_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        int leavestaken = 0;
        da.exnon("update report set totaldays='"+totaldays.Text+"'");
        da.exnon("update report set leavestaken='" + leavestaken + "'");
        Response.Write("<script> alert('Day Count Inserted Succesfully'); </script>");
        Response.Redirect("adminhome.aspx");
    }
}