using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class leavestatus : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["empid"] != null)
        {
            string empi = Session["empid"].ToString();
            int empid = Convert.ToInt32(empi);
            if (!IsPostBack)
            {
                da.gridbind("select * from appstatus where empid='" + empid + "'", GridView1);
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }




        
    }
}