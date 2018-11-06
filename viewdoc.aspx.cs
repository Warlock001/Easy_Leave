using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class viewdoc : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["empid"] != null)
        {
            string pri = Session["priority"].ToString();
            int priority = Convert.ToInt32(pri);
            da.gridbind("select appstatus.empid,appstatus.empname,appstatus.lfrom,appstatus.lto,leavedoc.image from appstatus inner join leavedoc on appstatus.leaveid=leavedoc.empid where appstatus.priority<'" + priority + "'", GridView1);

        }
        else
        {
            Response.Redirect("login.aspx");
        }

       
    }
}