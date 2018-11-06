using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class home : System.Web.UI.Page
{
    data da = new data();  
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["empid"] != null)
        {
            DataTable dt = da.extable("select * from empdetails where lid= '" + Session["empid"] + "'");
            string name = dt.Rows[0]["name"].ToString();
            empname_lbl.Text = name.ToString();
            int nonapp= da.stringexscalar("select Count(empid) from appstatus where empid='" + Session["empid"] + "' and status='nonapprove'");
            int app= da.stringexscalar("select Count(empid) from appstatus where empid='" + Session["empid"] + "' and status='approve'");
            int rej= da.stringexscalar("select Count(empid) from appstatus where empid='" + Session["empid"] + "' and status='reject'");
            string nonapprove = nonapp.ToString();
            string approve = app.ToString();
            string reject = rej.ToString();
            app_lbl.Text = approve;
            nonapp_lbl.Text = nonapprove;
            rej_lbl.Text = reject;
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("login.aspx", false);
    }
}