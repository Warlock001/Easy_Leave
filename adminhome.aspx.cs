using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string empid = Session["empid"].ToString();
        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["adminid"] != null)
        {

        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void logout_btn_click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("login.aspx", false);
    }

}