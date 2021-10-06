<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>About College</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="clgProfile.aspx" > College Profile</a> </li>
            <li><a href="vision_mission.aspx" >Vision & Mission</a></li>
            <li><a href="messages.aspx" >Messages</a></li>
            <li><a href="gen_rules.aspx" >General Rules</a></li>
           <li><a href="rag_rules.aspx" >Rules for Ragging</a> </li>
               <li><a href="#">Our Strenght</a> </li>
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        
        <!-- ################################################################################################ --> 
          Admin Login<br />
          <table class="auto-style1">
              <tr>
                  <td>Admin ID</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter admin id"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Password</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter password"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button1" runat="server"  Text="Login" OnClick="Button1_Click" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
      &nbsp;&nbsp;&nbsp;
      </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [password] FROM [admin_login]" DeleteCommand="DELETE FROM [admin_login] WHERE [id] = @id" InsertCommand="INSERT INTO [admin_login] ([id], [password]) VALUES (@id, @password)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE [admin_login] SET [password] = @password WHERE [id] = @id">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="id" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="id" Type="String" />
              </UpdateParameters>
      </asp:SqlDataSource>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

