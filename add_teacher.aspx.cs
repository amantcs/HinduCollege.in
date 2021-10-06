using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;

public partial class teacher_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
   
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox9.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       

          
  
       if (FileUpload1.HasFile == true)
            {
                FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
            }
        SqlDataSource1.Insert();
        Response.Write ("<script> {alert('Data Saved')}</script>");
        MailMessage mailmessage = new MailMessage();
        SmtpClient client = new SmtpClient();
        mailmessage.From = new MailAddress("samandeep540@gmail.com");
        mailmessage.Subject = "Teacher ID";
        mailmessage.Body = "Your Teacher ID is  "+ TextBox2.Text+"  Use this ID to signup at www.hinducollege.in";
        mailmessage.To.Add(new MailAddress(TextBox7.Text));

        mailmessage.Priority = MailPriority.High;
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.Credentials = new System.Net.NetworkCredential("samandeep540@gmail.com", "9463003743");
        client.EnableSsl = true;
        client.Send(mailmessage);
        Response.Write("<script>{alert('mail sent')} </script>");
        

    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string temp = "";
        string name = TextBox10.Text;
        string name1 = "", name2="hc";
        int num = 1;
        for (int i = 0; i <= 1; i++)
        {
            name1 = name1 + name[i];
        }
        temp = name2 + name1 + num;
        DataView x = new DataView();
        x = (DataView)(SqlDataSource2.Select(DataSourceSelectArguments.Empty));
       
        for (int i = 0; i < x.Table.Rows.Count; i++)
        {
            if (Convert.ToString(x.Table.Rows[i]["tid"]) ==temp )
            {
                num = num + 1;
                temp = name2 + name1 + num;
                if (Convert.ToString(x.Table.Rows[i]["tid"]) == temp)
                {
                    num = num + 1;
                    temp = name2 + name1 + num;
                }
            }
        }
        

            TextBox2.Text = temp;
        
    }

    

    protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@image"].Value = "uploads/" + FileUpload1.FileName;

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

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
}