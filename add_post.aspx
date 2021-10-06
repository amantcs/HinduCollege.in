<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="add_post.aspx.cs" Inherits="add_post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>Academics</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="faculty.aspx"  > Faculty</a> </li>
            <li><a href="house.aspx"  >House Examinations</a></li>
            <li><a href="student_marks.aspx"  >Results</a></li>
            <li><a href="Apply.aspx" >Vacancies</a></li>
          
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        <h1>Choose An Option:</h1>
          <table class="auto-style1">
              <tr>
                  <td>Department</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:DropDownList ID="DropDownList2" runat="server">
                           <asp:ListItem>Select Department.....</asp:ListItem>
                          <asp:ListItem>Commerce and Business Management</asp:ListItem>
                          <asp:ListItem>English</asp:ListItem>
                          <asp:ListItem>Punjabi</asp:ListItem>
                          <asp:ListItem>Hindi</asp:ListItem>
                          <asp:ListItem>Computer Applications and Computer Science</asp:ListItem>
                          <asp:ListItem>Biology and Environmental Sciences</asp:ListItem>
                          <asp:ListItem>Mathematics</asp:ListItem>
                          <asp:ListItem>Chemistery</asp:ListItem>
                          <asp:ListItem>Physics and Electronics</asp:ListItem>
                          <asp:ListItem>Sanskrit</asp:ListItem>
                          <asp:ListItem>Librarian</asp:ListItem>
                          <asp:ListItem>Philosophy</asp:ListItem>
                          <asp:ListItem>History</asp:ListItem>
                          <asp:ListItem>Geography Tourism</asp:ListItem>
                          <asp:ListItem>Economics</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Post</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:DropDownList ID="DropDownList3" runat="server">
                          <asp:ListItem>Lecturer</asp:ListItem>
                          <asp:ListItem>Assistant</asp:ListItem>
                          <asp:ListItem>H.O.D.</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
                  </td>
                  <td>
                      <asp:Button ID="Button2" runat="server" Text="Button" />
                  </td>
              </tr>
              </table>

       
        
        <!-- ################################################################################################ --> 
      </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [add_post]" DeleteCommand="DELETE FROM [add_post] WHERE [id] = @id" InsertCommand="INSERT INTO [add_post] ([dept], [post]) VALUES (@dept, @post)" UpdateCommand="UPDATE [add_post] SET [dept] = @dept, [post] = @post WHERE [id] = @id">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="DropDownList2" Name="dept" PropertyName="SelectedValue" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList3" Name="post" PropertyName="SelectedValue" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="dept" Type="String" />
                  <asp:Parameter Name="post" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
              </UpdateParameters>
      </asp:SqlDataSource>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 
</asp:Content>

