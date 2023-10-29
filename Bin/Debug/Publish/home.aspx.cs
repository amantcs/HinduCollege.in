using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string message = string.Empty;
        DataView x = new DataView();
        x = (DataView )(SqlDataSource1 .Select(DataSourceSelectArguments.Empty));
        Boolean flag = false;
        for (int i = 0; i < x.Table.Rows.Count; i++)
        {
            if (Convert .ToString ( x.Table.Rows[i]["links"]) ==idtext .Value.ToLower() ) 
            {
                flag = true;
                break;

            }
        }
        if (flag == true)
        {
            Response.Redirect(idtext .Value + ".aspx");
        }
        else
        {
            switch (idtext.Value)
            {
                case "result":
                    Response.Redirect("student_marks.aspx");
                    break;
                case "gallery":
                    Response .Redirect ("gallery.aspx");
                    break;
                case "":
                     message = "Please Enter a Search Keyword ";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                break;

            }
           
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
{

}
    protected void Button1_ServerClick(object sender, EventArgs e)
    {

    }
}
