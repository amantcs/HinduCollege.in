<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="st_signup.aspx.cs" Inherits="st_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 17px;
        }
        .auto-style3 {
            width: 249px;
        }
        .auto-style4 {
            height: 17px;
            width: 249px;
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
            <li><a href="teacher_sighup.aspx"   >Teacher Sign Up</a></li>
           
            
          
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
          <h1>Student Sign Up Form</h1>
          <font color="black">
          <table class="auto-style1">
              <tr>
                  <td class="auto-style3">Roll No</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox1" runat="server" Width="275px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      Set A Password</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox2" runat="server" Width="275px" TextMode="Password"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      Confirm Password</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox3" runat="server" Width="275px" TextMode="Password"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Re Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style4">
                      <asp:Button ID="Button2" runat="server" Text="SIGNUP" OnClick="Button2_Click" />
                  </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
              </table></font>
        <!-- ################################################################################################ -->
       
        
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear">
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student_signup] WHERE [rollno] = @rollno" InsertCommand="INSERT INTO [student_signup] ([rollno], [password]) VALUES (@rollno, @password)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [student_signup]" UpdateCommand="UPDATE [student_signup] SET [password] = @password WHERE [rollno] = @rollno">
                  <DeleteParameters>
                      <asp:Parameter Name="rollno" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="rollno" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="password" Type="String" />
                      <asp:Parameter Name="rollno" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [student_detail]"></asp:SqlDataSource>
      </div>
        </main> 
      </div> 
        </div> 
</asp:Content>

