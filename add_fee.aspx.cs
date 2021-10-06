using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_fee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Convert.ToString(Convert .ToInt32 (TextBox2.Text ) - Convert .ToInt32 (TextBox3 .Text ));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string message = string.Empty;
        SqlDataSource1.Insert();
        message = "Done !";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}