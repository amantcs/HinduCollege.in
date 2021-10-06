using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class del_student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string message = string.Empty;
        SqlDataSource2.Delete();
        message = "Record Deleted";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_home.aspx");
    }
}