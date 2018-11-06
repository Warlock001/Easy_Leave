using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{




    data da = new data();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["adminid"] != null)
        {
           
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
        }
        if (HttpContext.Current.Session[""] != null)
        {

            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
        }

    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        Session["kallan"] = 1;
        if (admin_chkbox.Checked == true)
        {
            Session["adminid"] = 1;
            DataTable dt = da.extable("select * from adminlogin where username='" + username_txt.Text + "' and password='" + pass_txt.Text + "'");
            if (dt.Rows.Count != 0)
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                Response.Write("<script> alert('Invalid Password'); </script>");
            }
        }
        else
        {
            DataTable dt = da.extable("select * from emplogin where username='" + username_txt.Text + "' and password='" + pass_txt.Text + "'");
            if (dt.Rows.Count != 0)
            {
                Session["empid"] = dt.Rows[0]["lid"];
                dt = da.extable("select * from empdetails where lid='" + Session["empid"] + "'");
                if (dt.Rows.Count != 0)
                {
                    string pty = dt.Rows[0]["priority"].ToString();
                    int priority = Convert.ToInt32(pty);
                    Session["priority"] = pty;

                }
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<script> alert('Invalid Password'); </script>");
            }
        }

    }
}





    
