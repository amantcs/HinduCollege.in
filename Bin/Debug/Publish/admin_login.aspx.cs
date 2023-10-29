using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            Response.Redirect("admin_home.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataView x = new DataView();
        x = (DataView)(SqlDataSource1.Select(DataSourceSelectArguments.Empty));
        Boolean flag = false;
        for (int i = 0; i <= x.Table.Rows.Count; i++)
        {
            if ((Convert.ToString(x.Table.Rows[i]["id"]) == TextBox1.Text) & (Convert.ToString(x.Table.Rows[i]["password"]) == TextBox2.Text))
            {
                flag = true;
                Session["admin"] = TextBox1.Text;
                break;


            }
        }
        if (flag == true)
        {
            Response.Redirect("admin_home.aspx");

        }
        else
        {
            Response.Write("<script> alert('invalid login')</script>");
        }
        
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}