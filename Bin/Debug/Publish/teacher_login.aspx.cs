using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class teacher_login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          
      
      
            DataView x = new DataView();
            x = (DataView)(SqlDataSource1.Select(DataSourceSelectArguments.Empty));
            Boolean flag = false;
            for (int i = 0; i < x.Table.Rows.Count; i++)
            {
                if ((Convert.ToString(x.Table.Rows[i]["tid"]) == TextBox1.Text) & (Convert.ToString(x.Table.Rows[i]["password"]) == TextBox2.Text))
                {
                    Session["tid"] = TextBox1.Text;
                    flag = true;
                    break;


                }
            }
            if (flag == true)
            {
               
                Response.Redirect("myprofiletea.aspx");

            }
            else
            {
                Response.Write("<script> alert('invalid login')</script>");
            }
       
      
           
    }
   
}
