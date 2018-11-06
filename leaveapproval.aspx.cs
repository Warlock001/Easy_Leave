using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class leaveapproval : System.Web.UI.Page
{
    data da = new data();
    string name = string.Empty;
    string email = string.Empty;
    string emailbody = string.Empty;
    int netvalue = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.AppendHeader("Cache-Control", "no-store");
            if (HttpContext.Current.Session["empid"] != null)
            {
                string prty = Session["priority"].ToString();
                int priority = Convert.ToInt32(prty);
                da.gridbind("select * from appstatus where status='nonapprove' and priority <'" + priority + "'", GridView1);

            }
            else
            {
                Response.Redirect("login.aspx");
            }


           

        }
    }





    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    string id = GridView1.DataKeys[e.].Value.ToString();
    //    da.exnon("update appstatus set status='approve' where empid='" + id + "'");
    //    da.gridbind("select * from appstatus", GridView1);

    //}

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string leaveid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        da.exnon("update appstatus set status='reject' where leaveid='"+leaveid+"'");
        Response.Write("<script> alert('Application Rejected Successfully'; </script>");
        string prty = Session["priority"].ToString();
        int priority = Convert.ToInt32(prty);
        da.gridbind("select * from appstatus where status='nonapprove' and priority < '" + priority + "'", GridView1);

    }



    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string id = GridView1.DataKeys.[e.]
    //    da.exnon("update appstatus set status='approve' where empid='" + id + "'");
    //    da.gridbind("select * from appstatus", GridView1);


    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        int leavecount = 1;
        string leaveid = GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
        da.exnon("update appstatus set status='approve' where leaveid='" +leaveid + "'");
        DataTable dt = da.extable("select * from appstatus where leaveid='" + leaveid + "'");
        string empnme = dt.Rows[0]["empname"].ToString();
         dt = da.extable("select * from report where name='"+empnme+"'");
        string leavedbcount = dt.Rows[0]["leavestaken"].ToString();
        string totleave = dt.Rows[0]["totaldays"].ToString();
        int totalleave = Convert.ToInt32(totleave);
        int exstlve = Convert.ToInt32(leavedbcount);
        int fleave = exstlve + leavecount;
        float percent =((fleave / totalleave) * 100);
        dt = da.extable("select * from empdetails where name='" + empnme + "'");
        string name = dt.Rows[0]["name"].ToString();
        da.exnon("update report set leavestaken='"+fleave+"',percentleave='"+percent+"' where name='"+empnme+"'");
        email = dt.Rows[0]["email"].ToString();
        dt = da.extable("select * from appstatus where leaveid='" + leaveid + "'");
        string fdate = dt.Rows[0]["lfrom"].ToString();
        string tdate = dt.Rows[0]["lto"].ToString();
        string ename = dt.Rows[0]["empname"].ToString();
        DateTime fromdate = Convert.ToDateTime(fdate);
        DateTime todate = Convert.ToDateTime(tdate);
        dt = da.extable("select * from empdetails where lid='"+Session["empid"]+"'");
        string empname = dt.Rows[0]["name"].ToString();
        string designation = dt.Rows[0]["designation"].ToString();
        emailbody = "Dear " + ename + ",\n\n Your Leave Request for " + fromdate + " to " + todate + " has been Approved by "+designation+" "+empname+".\n\n *This is an auto-generated E-mail. Do not reply.*";
        check_internet();
        if (netvalue == 1)
        {
            SendMail();
        }
        string prty = Session["priority"].ToString();
        int priority = Convert.ToInt32(prty);
        da.gridbind("select * from appstatus where status='nonapprove' and priority < '" + priority + "'", GridView1);

    }

    public void SendMail()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(email);

        mail.From = new MailAddress("username@gmail.com");
        mail.Subject = "Leave Approved";
        mail.Body = emailbody;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential
        ("username@gmail.com", "password");

        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);
    }


    public void check_internet()
    {
        WebClient client = new WebClient();
        byte[] datasize = null;
        try
        {
            datasize = client.DownloadData("http://www.google.com");
        }
        catch (Exception ex)
        {
        }
        if (datasize != null && datasize.Length > 0)
            netvalue = 1;
        else
            netvalue = 0;
    }
}
