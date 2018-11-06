using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class uploaddoc : System.Web.UI.Page
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

    protected void upload_btn_Click(object sender, EventArgs e)
    {
        if(!FileUpload1.HasFile)
        {
            Response.Write("<script> alert('select a file to upload!'); </script>");
        }
        else
        {
            DateTime lto = Convert.ToDateTime(DropDownList1.SelectedValue);
            DataTable dt = da.extable("select * from appstatus where lto='" + lto + "'");
            if (dt.Rows.Count != 0)
            {
                // using leaveid as a unique constraint to connect leavedoc to leave
                int leaveid = Convert.ToInt32(dt.Rows[0]["leaveid"].ToString());
                string fname = FileUpload1.FileName;
                string fpath = "~/pic/" + fname;
                FileUpload1.SaveAs(Server.MapPath("~/pic/" + fname));
                da.exnon("insert into leavedoc values('" + leaveid + "','" + fname + "')");
                Response.Write("<script> alert('File uploaded Successfully!'); </script>");
                Response.Redirect("home.aspx");
            }
        }
    }

    protected void goback_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("dochome.aspx");
    }
}