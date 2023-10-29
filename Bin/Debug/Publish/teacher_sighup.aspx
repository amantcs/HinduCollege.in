<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="teacher_sighup.aspx.cs" Inherits="teacher_sighup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 49px;
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
            <li><a href="st_signup.aspx"  >Student Sign Up</a></li>
           
            
          
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
   
    <div id="content" class="two_third"> 
          <h1>Teacher&nbsp; Sign Up Form</h1>
          <table class="auto-style1">
              <tr>
                  <td class="auto-style2">Teacher ID </td>
                  <td class="auto-style2"></td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Id"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Set A Password</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the Password "></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">Confirm Password</td>
                  <td class="auto-style3"></td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Comfirm the Password "></asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="Password Mismatch"></asp:CompareValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table>
          <font color="black">
         </font>
        <!-- ################################################################################################ -->
       
        
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear">
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO [teacher] ([tid], [password]) VALUES (@tid, @password)" SelectCommand="SELECT [tid], [password] FROM [teacher]" OnSelecting="SqlDataSource1_Selecting" DeleteCommand="DELETE FROM [teacher] WHERE [tid] = @tid" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" UpdateCommand="UPDATE [teacher] SET [password] = @password WHERE [tid] = @tid">
                  <DeleteParameters>
                      <asp:Parameter Name="tid" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="tid" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="TextBox3" Name="password" PropertyName="Text" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="password" Type="String" />
                      <asp:Parameter Name="tid" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>

              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [teacher_details] WHERE [tid] = @tid" InsertCommand="INSERT INTO [teacher_details] ([tid]) VALUES (@tid)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [tid] FROM [teacher_details]">
                  <DeleteParameters>
                      <asp:Parameter Name="tid" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="tid" Type="String" />
                  </InsertParameters>
              </asp:SqlDataSource>

      </div>
        </main> 
      </div> 
        </div> 
</asp:Content>

