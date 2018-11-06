using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class empedit : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            da.gridbind("select * from empdetails", GridView1);
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        da.gridbind("select * from empdetails", GridView1);
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        da.gridbind("select * from empdetails", GridView1);
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        TextBox txtname = new TextBox();
        txtname = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];
        TextBox txtdob = new TextBox();
        txtdob = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtaddress = new TextBox();
        txtaddress = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtdesignation = new TextBox();
        txtdesignation = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtphno = new TextBox();
        txtphno = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox txtemail = new TextBox();
        txtemail = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
        TextBox priority = new TextBox();
        priority = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
        da.exnon("update empdetails set name='" + txtname.Text + "',dob='" + txtdob.Text + "',address='" + txtaddress.Text + "',designation='" + txtdesignation.Text + "',phoneno='" + txtphno.Text + "',email='" + txtemail.Text + "',priority='"+priority.Text+"' where lid=" + id+"");
        da.exnon("update report set name='" + txtname.Text + "' where empid='"+id+"'");
        da.exnon("update appstatus set empname='" + txtname.Text + "' where empid='" + id + "'");
        GridView1.EditIndex = -1;
        da.gridbind("select * from empdetails", GridView1);
        }
}