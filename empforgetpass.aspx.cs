using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class empforgetpass : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        string mobno = empmobileno.Text.ToString();
        Int64 mobileno = Convert.ToInt64(mobno);
        DataTable dt = da.extable("select * from empdetails where phoneno='" + mobileno + "'");
        if(dt.Rows.Count!=0)
        {
            string emid = dt.Rows[0]["lid"].ToString();
            int empid = Convert.ToInt32(emid);
            Session["empid"] = empid;
            Response.Redirect("empfcpass.aspx");
        }
        else
        {
            Response.Write("<script> alert('Incorrect Mobile Number.'); </script>");
        }
    }

    protected void back_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}