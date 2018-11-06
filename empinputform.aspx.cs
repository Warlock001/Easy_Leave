using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class empinputform : System.Web.UI.Page
{
    data da = new data();
    protected void Page_Load(object sender, EventArgs e)
    {


        desg_vtr.Visible = false;
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        int priority = 0;
        if (desg_ddl.SelectedValue == "Select Designation")
        {
            desg_vtr.Visible = true;
        }

        else
        {

            if (desg_ddl.SelectedValue == "Manager")
            {
                priority = 6;
                leavemonth.Text = "5";
            }
            else if (desg_ddl.SelectedValue == "Asst Manager")
            {
                priority = 5;
                leavemonth.Text = "4";
            }
            else if (desg_ddl.SelectedValue == "Section Officer")
            {
                priority = 4;
                leavemonth.Text = "4";
            }
            else if (desg_ddl.SelectedValue == "Assistant")
            {
                priority = 3;
                leavemonth.Text = "4";
            }
            else if (desg_ddl.SelectedValue == "Clerk")
            {
                priority = 2;
                leavemonth.Text = "3";
            }
            else if (desg_ddl.SelectedValue == "Peon")
            {
                priority = 1;
                leavemonth.Text = "2";
            }
            //int empid = 0;
            int lvtkn = 0;
            object lid = da.exscalar("insert into emplogin values('" + username.Text + "','" + pass.Text + "')" + "SELECT SCOPE_IDENTITY()");
            da.exnon("insert into empdetails values('" + name.Text + "','" + dob.Text + "','" + add.Text + "','" + desg_ddl.SelectedItem.Value + "','" + phno.Text + "','" + email.Text + "','" + priority + "','" + lid + "')");
            da.exnon("insert into report (empid,name,leavestaken) values('" + lid + "','" + name.Text + "','"+lvtkn+"')");
            Response.Write("<script> alert('Data Inserted Succesfully') </script>");

        }    }

    protected void name_TextChanged(object sender, EventArgs e)
    {
        //name.Text = "";
    }

    protected void desg_ddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}