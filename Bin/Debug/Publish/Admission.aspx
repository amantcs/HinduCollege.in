<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<script runat="server">

   
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
        }
       
        SqlDataSource1.Insert();
        Response.Redirect("newad_feedback.aspx");
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

    protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@image"].Value = "uploads/" + FileUpload1.FileName;
    }

   

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

   

    protected void Button4_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>Admissions</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="ad_rules.aspx"  >General Rules</a></li>
            <li><a href="ad_schedule.aspx"  >Schedule</a></li>
            <li><a href="fee.aspx" >Fee Structure</a></li>
            <li><a href="scholar.aspx"  >Scholarships</a></li>
           <li><a href="Admission.aspx"  >Apply Online</a> </li>
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        <h1>Admission form</h1>
          <asp:scriptmanager runat="server" />
          <asp:updatepanel runat="server">
    <contenttemplate>
        <font color="black">  <table cellpadding="0" cellspacing="0" class="auto-style1">
              <tr>
                  <td>Name of Applicant</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Provide Your Name" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Father&#39;s Name</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Mother&#39;s Name</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
    
              <tr>
                  <td>

                      Date of Birth</td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
             
              <tr>
                  <td>

                      <asp:TextBox ID="TextBox4" runat="server"  Width="270px"></asp:TextBox>

                      <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />

                  </td>
                  <td class="auto-style2">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
             
              <tr>
                  <td>

                      <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                  </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
             
              <tr>
                  <td>Gender</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:RadioButtonList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Permanent Address</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>City</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox6" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>State</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox7" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Country</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox8" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>PIN Code</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox9" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Mobile </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <asp:TextBox ID="TextBox10" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td class="auto-style2">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ControlToValidate="TextBox10" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Email</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox11" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Required" ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Higher Examination Passed</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox12" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Required" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Name of University/ Board</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox13" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Required" ControlToValidate="TextBox13" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Passing Year</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox14" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Required" ControlToValidate="TextBox14" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Percentage</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox15" runat="server" Width="270px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Required" ControlToValidate="TextBox15" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Course Selected</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem>Select Couse...</asp:ListItem>
                          <asp:ListItem>+1</asp:ListItem>
                          <asp:ListItem>+2</asp:ListItem>
                          <asp:ListItem>B.A.</asp:ListItem>
                          <asp:ListItem>B.C.A.</asp:ListItem>
                          <asp:ListItem>B.B.A.</asp:ListItem>
                          <asp:ListItem>B.Com(Regu.)</asp:ListItem>
                          <asp:ListItem>B.Com(Prof.)</asp:ListItem>
                          <asp:ListItem>B.Sc.(IT)</asp:ListItem>
                          <asp:ListItem>B.Sc.(Comp. Sci.)</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td>
                      <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="required" ControlToValidate="DropDownList1" OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)" ForeColor="Red"></asp:CustomValidator>
                  </td>
              </tr>
              <tr>
                  <td>Image</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:FileUpload ID="FileUpload1" runat="server" Width="270px" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table></contenttemplate>
</asp:updatepanel>
          <table class="auto-style1">
              <tr>
                  <td>
                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="APPLY" />
                  </td>
                  <td>
                      <asp:Button ID="Button3" runat="server" Text="CANCEL" />
                  </td>
              </tr>
          </table>
        </font>
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear">
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [newad] WHERE [email] = @email" InsertCommand="INSERT INTO [newad] ([name], [fathername], [mname], [dob], [gender], [add], [city], [state], [country], [pin], [mobile], [email], [expass], [uniboard], [passyear], [percent], [course], [image]) VALUES (@name, @fathername, @mname, @dob, @gender, @add, @city, @state, @country, @pin, @mobile, @email, @expass, @uniboard, @passyear, @percent, @course, @image)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [newad]" UpdateCommand="UPDATE [newad] SET [name] = @name, [fathername] = @fathername, [mname] = @mname, [dob] = @dob, [gender] = @gender, [add] = @add, [city] = @city, [state] = @state, [country] = @country, [pin] = @pin, [mobile] = @mobile, [expass] = @expass, [uniboard] = @uniboard, [passyear] = @passyear, [percent] = @percent, [course] = @course, [image] = @image WHERE [email] = @email" OnInserting="SqlDataSource1_Inserting" >
                  <DeleteParameters>
                      <asp:Parameter Name="email" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox2" Name="fathername" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox3" Name="mname" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox4" Name="dob" PropertyName="Text" Type="DateTime" />
                      <asp:ControlParameter ControlID="RadioButtonList1" Name="gender" PropertyName="SelectedValue" Type="String" />
                      <asp:ControlParameter ControlID="TextBox5" Name="add" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox6" Name="city" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox7" Name="state" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox8" Name="country" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox9" Name="pin" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox10" Name="mobile" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox11" Name="email" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox12" Name="expass" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox13" Name="uniboard" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox14" Name="passyear" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox15" Name="percent" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue" Type="String" />
                      <asp:FormParameter Name="image" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="name" Type="String" />
                      <asp:Parameter Name="fathername" Type="String" />
                      <asp:Parameter Name="mname" Type="String" />
                      <asp:Parameter Name="dob" Type="DateTime" />
                      <asp:Parameter Name="gender" Type="String" />
                      <asp:Parameter Name="add" Type="String" />
                      <asp:Parameter Name="city" Type="String" />
                      <asp:Parameter Name="state" Type="String" />
                      <asp:Parameter Name="country" Type="String" />
                      <asp:Parameter Name="pin" Type="String" />
                      <asp:Parameter Name="mobile" Type="String" />
                      <asp:Parameter Name="expass" Type="String" />
                      <asp:Parameter Name="uniboard" Type="String" />
                      <asp:Parameter Name="passyear" Type="String" />
                      <asp:Parameter Name="percent" Type="String" />
                      <asp:Parameter Name="course" Type="String" />
                      <asp:Parameter Name="image" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
      </div>
        </main> 
      </div> 
        </div> 

</asp:Content>

