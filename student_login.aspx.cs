using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class student_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string message = string.Empty;
        DataView x = new DataView();
        x = (DataView)(SqlDataSource1.Select(DataSourceSelectArguments.Empty));
        Boolean flag = false;
        for (int i = 0; i < x.Table.Rows.Count; i++)
        {
            if ((Convert.ToString(x.Table.Rows[i]["rollno"]) == TextBox1.Text) & (Convert.ToString(x.Table.Rows[i]["password"]) == TextBox2.Text))
            {
                Session["rollno"] = TextBox1.Text;
                flag = true;
                break;


            }
        }
        if (flag == true)
        {
            Response.Redirect("myprofile.aspx");

        }
        else
        {
            message = "Roll Number or Password is Incorrect";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
           
        }
            
       
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}