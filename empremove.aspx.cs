using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class empremove : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        da.gridbind("select * from empdetails", GridView1);
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        da.exnon("delete from empdetails where lid=" + id + "");
        da.exnon("delete from emplogin where lid="+id+"");
        da.exnon("delete from appstatus where empid=" + id + "");
        da.gridbind("select * from empdetails", GridView1);

    }
}