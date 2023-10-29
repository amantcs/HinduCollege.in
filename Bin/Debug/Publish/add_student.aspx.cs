using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            args.IsValid = false;

        }
        else
        {
            args.IsValid = true;
        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Calendar1.SelectedDate.ToString();
        Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
        }
        string message = string.Empty;
        SqlDataSource1.Insert();
        message = "Student added Successfully";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
   
    protected void SqlDataSource1_Inserting1(object sender, SqlDataSourceCommandEventArgs e)
    {
       
        e.Command.Parameters["@image"].Value = "uploads/" + FileUpload1.FileName;

    
    }
}