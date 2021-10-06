<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="teacher_login.aspx.cs" Inherits="teacher_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
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
          Teacher Login<br />
          <table class="auto-style1">
              <tr>
                  <td>Teacher ID</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter teacher id"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Password</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter password"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button1" runat="server"  Text="Login" OnClick="Button1_Click" Height="28px" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
      </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tid], [password] FROM [teacher]" ViewStateMode="Disabled" DeleteCommand="DELETE FROM [teacher] WHERE [tid] = @tid" InsertCommand="INSERT INTO [teacher] ([tid], [password]) VALUES (@tid, @password)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE [teacher] SET [password] = @password WHERE [tid] = @tid">
              <DeleteParameters>
                  <asp:Parameter Name="tid" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="tid" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="tid" Type="String" />
              </UpdateParameters>
      </asp:SqlDataSource>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>


