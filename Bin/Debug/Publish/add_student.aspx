<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="add_student.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 19px;
        }
        .auto-style3 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>Other Links</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="st_signup.aspx"  >Student Sign-Up</a></li>
            <li><a href="teacher_signup.aspx"  >Teacher Sign-Up</a></li>
             
          
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
          <h1>Add Student </h1>
          <font color="black">
              <asp:scriptmanager runat="server" />
              <asp:updatepanel runat="server">
    <contenttemplate>
          <table cellpadding="0" cellspacing="0" class="auto-style1">
              <tr>
                  <td>Roll No.</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server" Width="275px" ></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Name</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox2" runat="server" Width="275px"></asp:TextBox>
                  </td>
                  <td class="auto-style3"></td>
              </tr>
              <tr>
                  <td>Father Name</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server" Width="275px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Mother Name</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server" Width="275px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
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
                  <td>Date of Birth</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox5" runat="server" Width="275px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style2">
                      <asp:Button ID="Button1" runat="server" Text="Pick Date..." OnClick="Button1_Click" />
                  </td>
                  <td class="auto-style2"></td>
              </tr>
              <tr>
                  <td>
                      <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged ="Calendar1_SelectionChanged" ></asp:Calendar>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Class</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" Width="275px">
                          <asp:ListItem>Select Class</asp:ListItem>
                          <asp:ListItem>BCA Semester I</asp:ListItem>
                          <asp:ListItem>BCA Semester II</asp:ListItem>
                          <asp:ListItem>BCA Semester III</asp:ListItem>
                          <asp:ListItem>BBA Semester I</asp:ListItem>
                          <asp:ListItem>BBA Semester II</asp:ListItem>
                          <asp:ListItem>BBA Semester III</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td>
                      <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)" ControlToValidate="DropDownList1" ErrorMessage="Please Select Class" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                  </td>
              </tr>
              <tr>
                  <td>Contact No.</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox6" runat="server" Width="275px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>E - Mail</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox7" runat="server" Width="275px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Address</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Width="275px"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Photo</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table></contenttemplate>
</asp:updatepanel>
              <table class="auto-style1">
                  <tr>
                      <td>
                          <asp:Button ID="Button2" runat="server" Text="SAVE" OnClick="Button2_Click" />
                      </td>
                      <td>
                          <asp:Button ID="Button3" runat="server" CausesValidation="False" Text="CANCEL" />
                      </td>
                  </tr>
          </table>
          </font> 
          

      </div> 
             <div class="clear">
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student_detail] WHERE [rollno] = @rollno" InsertCommand="INSERT INTO [student_detail] ([rollno], [name], [fname], [mname], [gender], [dob], [stream], [phn], [email], [add], [image]) VALUES (@rollno, @name, @fname, @mname, @gender, @dob, @stream, @phn, @email, @add, @image)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [student_detail]" UpdateCommand="UPDATE [student_detail] SET [name] = @name, [fname] = @fname, [mname] = @mname, [gender] = @gender, [dob] = @dob, [stream] = @stream, [phn] = @phn, [email] = @email, [add] = @add WHERE [rollno] = @rollno" OnInserting="SqlDataSource1_Inserting1">
                     <DeleteParameters>
                         <asp:Parameter Name="rollno" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:ControlParameter ControlID="TextBox1" Name="rollno" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="TextBox2" Name="name" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="TextBox3" Name="fname" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="TextBox4" Name="mname" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="RadioButtonList1" Name="gender" PropertyName="SelectedValue" Type="String" />
                         <asp:ControlParameter ControlID="TextBox5" Name="dob" PropertyName="Text" Type="DateTime" />
                         <asp:ControlParameter ControlID="DropDownList1" Name="stream" PropertyName="SelectedValue" Type="String" />
                         <asp:ControlParameter ControlID="TextBox6" Name="phn" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="TextBox7" Name="email" PropertyName="Text" Type="String" />
                         <asp:ControlParameter ControlID="TextBox8" Name="add" PropertyName="Text" Type="String" />
                         <asp:FormParameter Name="image" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="name" Type="String" />
                         <asp:Parameter Name="fname" Type="String" />
                         <asp:Parameter Name="mname" Type="String" />
                         <asp:Parameter Name="gender" Type="String" />
                         <asp:Parameter Name="dob" Type="DateTime" />
                         <asp:Parameter Name="stream" Type="String" />
                         <asp:Parameter Name="phn" Type="String" />
                         <asp:Parameter Name="email" Type="String" />
                         <asp:Parameter Name="add" Type="String" />
                         <asp:Parameter Name="rollno" Type="String" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
      </div>
        </main> 
      </div> 
        </div> 
</asp:Content>

