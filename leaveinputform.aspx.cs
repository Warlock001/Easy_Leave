using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class leaveinputform : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["empid"] != null)
        {
            datelabel.Visible = false;
            ltodatelabel.Visible = false;
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        //Response.Write("<script> alert('Date should be entered in [Month//Date//Year] format Only!');</script>");
        
    }

    protected void lto_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (lfrom.Text != lto.Text)
        {
            DateTime leavefrom = Convert.ToDateTime(lfrom.Text);
            DateTime leaveto = Convert.ToDateTime(lto.Text);
            if (leavefrom < DateTime.Now)
            {
                datelabel.Visible = true;
            }
            else if (leaveto <= leavefrom)
            {
                ltodatelabel.Visible = true;
            }
            else {
                TimeSpan objtimespan = leaveto - leavefrom;
                // total days
                double days = Convert.ToDouble(objtimespan.TotalDays);
                string noofdays = days.ToString();
                string empid = Session["empid"].ToString();
                string status = "nonapprove";
                DataTable dt = da.extable("select * from empdetails where lid='" + empid + "'");
                if (dt.Rows.Count != 0)
                {
                    string empname = string.Empty;
                    empname = dt.Rows[0]["name"].ToString();
                    string pty = Session["priority"].ToString();
                    int priority = Convert.ToInt32(pty);
                    da.exnon("insert into appstatus values('" + empid + "','" + empname + "','" + lfrom.Text + "','" + lto.Text + "','" + noofdays + "','" + status + "','" + priority + "')");
                    Response.Redirect("home.aspx");
                }
            }
     

        }
    }
    protected void go_back_click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}