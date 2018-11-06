using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class empfcpass : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_btn_Click(object sender, EventArgs e)
    {
        da.exnon("update emplogin set password='" + newpass.Text + "' where lid='" + Session["empid"] + "'");
        Response.Write("<script> alert('Password Change Successful!'); </script>");
        Response.Redirect("login.aspx");
    }

    protected void back_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("empforgetpass.aspx");
    }
}