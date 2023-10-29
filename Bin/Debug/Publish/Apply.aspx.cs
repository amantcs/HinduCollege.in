using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Apply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
        }
        SqlDataSource2.Insert();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void SqlDataSource2_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@resume"].Value = "uploads/" + FileUpload1.FileName;
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}