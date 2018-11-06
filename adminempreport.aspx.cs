using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Configuration;
using System.IO;


public partial class adminempreport : System.Web.UI.Page
{
    data da = new data();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AppendHeader("Cache-Control", "no-store");
        if (HttpContext.Current.Session["adminid"] != null)
        {
            string ddl = DropDownList1.SelectedValue;
            string status = "approve";

        }
        else
        {
            Response.Redirect("login.aspx");
        }

        //da.gridbind("select * from appstatus where empname='" + ddl + "' and status='" + status + "'",gridview1);
        //da.gridbind("select * from report where name='" + ddl + "'", GridView2);
    }


    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "  
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    }


    protected void submit_btn_Click(object sender, EventArgs e)
    {
        string ddl = DropDownList1.SelectedValue;
        string status = "approve";
        da.gridbind("select * from appstatus where empname='" + ddl + "' and status='" + status + "'", gridview1);
        da.gridbind("select * from report where name='" + ddl + "'", GridView2);
    }

    private void ExportGridToPDF()
    {

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=emp_report.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        gridview1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
        gridview1.AllowPaging = true;
        //gridview1.DataBind();
        string ddl = DropDownList1.SelectedValue;
        string status = "approve";
        da.gridbind("select * from appstatus where empname='" + ddl + "' and status='" + status + "'", gridview1);

    }

    protected void exportpdf_btn_Click(object sender, EventArgs e)
    {
        ExportGridToPDF();
    }

    private void ExportGridToPDFa()
    {

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=emp_totalreport.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        gridview1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
        gridview1.AllowPaging = true;
        //gridview1.DataBind();
        string ddl = DropDownList1.SelectedValue;
        da.gridbind("select * from report where name='" + ddl + "'", GridView2);

    }

    protected void exportpdfa_btn_Click(object sender, EventArgs e)
    {
        ExportGridToPDFa();
    }
}