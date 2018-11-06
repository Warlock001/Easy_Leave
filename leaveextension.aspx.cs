using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class leaveextension : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["empid"] != null)
        {
            lextenderror.Visible = false;

        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        DateTime leaveto = Convert.ToDateTime(DropDownList2.SelectedValue);
        DataTable dt = da.extable("select * from appstatus where lto='"+leaveto+"'");
        string leavfrom = dt.Rows[0]["lfrom"].ToString();
        DateTime leavefrom = Convert.ToDateTime(leavfrom);
        //DateTime leavefrom = Convert.ToDateTime(DropDownList1.SelectedValue);

        DateTime lextnd = Convert.ToDateTime(lextend.Text);
            if (lextnd <= leaveto)
            {
                lextenderror.Visible = true;
            }
        
        else
        {
            TimeSpan objtimespan = leaveto - leavefrom;
            TimeSpan objtimespn = lextnd - leaveto;
            // total days
            double days = Convert.ToDouble(objtimespan.TotalDays);
            double day = Convert.ToDouble(objtimespn.TotalDays);
            double tday = days + day;
            string noofdaysext = tday.ToString();
            string status = "nonapprove";
            string emid = Session["empid"].ToString();
            int empid = Convert.ToInt32(emid);
            dt = da.extable("select * from empdetails where lid='" + empid + "'");
            if (dt.Rows.Count != 0)
            {
                string empname = dt.Rows[0]["name"].ToString();
                DateTime lto = Convert.ToDateTime(DropDownList2.SelectedValue);
                da.exnon("update appstatus set lto='" + lextend.Text + "',nodays='" + noofdaysext + "',status='" + status + "' where empname='" + empname + "' and lto='" + lto + "'");
                Response.Write(" <script> alert('Leave Extension Successful!'); </script>");
                Response.Redirect("leavemanage.aspx");

            }
        }
    }

    protected void goback_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("leavemanage.aspx");
    }
}