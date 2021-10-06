<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="student_login.aspx.cs" Inherits="student_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <li><a href="teacher_login.aspx" >Teacher Login</a></li>
           
            
          
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
          <h1>Student Login Form</h1>
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
                      Password</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox2" runat="server" Width="275px" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style4">
                      <asp:Button ID="Button2" runat="server" Text="LOGIN" OnClick="Button2_Click" />
                  </td>
                  <td class="auto-style2">
                      <asp:Button ID="Button3" runat="server" Text="BACK" />
                  </td>
              </tr>
              </table></font>
        <!-- ################################################################################################ -->
       
        
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear">
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [rollno], [password] FROM [student_signup]"></asp:SqlDataSource>
      </div>
        </main> 
      </div> 
        </div>
</asp:Content>

