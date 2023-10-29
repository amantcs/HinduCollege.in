using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
public partial class teacher_sighup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string message = string.Empty;
        DataView x = new DataView();
        x = (DataView)(SqlDataSource1.Select(DataSourceSelectArguments.Empty));
        Boolean flag = false;
        for (int i = 0; i < x.Table.Rows.Count; i++)
        {
            if (Convert.ToString(x.Table.Rows[i]["tid"]) == TextBox1.Text)
            {
                flag = true;
                break;

            }
        }
        if (flag == true)
        {
          //  Response.Write("<script> alert('this user already exist')</script>");
            message = "This User Is Already Exist";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        }
        else
        {
            DataView y = new DataView();
            y = (DataView)(SqlDataSource2.Select(DataSourceSelectArguments.Empty));
            Boolean flag1 = false;
            for (int i = 0; i < y.Table.Rows.Count; i++)
            {
                if (Convert.ToString(y.Table.Rows[i]["tid"]) == TextBox1.Text)
                {
                    flag1 = true;
                    break;

                }
            }
            if (flag1 == true)
            {

                SqlDataSource1.Insert();
                  message = "user added sucessfully";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
            else
            {
                message = "Teacher ID is not valid \\n Please contact to Administrator";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }
    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}