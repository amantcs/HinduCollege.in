<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="del_teacher.aspx.cs" Inherits="del_teacher" %>

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
          <h1>Delete Teacher Record:</h1>
          <table class="auto-style1">
              <tr>
                  <td>Enter Teacher Id</td>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tid" DataValueField="tid">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="DELETE" />
                  </td>
                  <td>
                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CANCEL" />
                  </td>
              </tr>
          </table>

      </div>
        </main> 
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [tid] FROM [teacher_details]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [teacher_details] WHERE [tid] = @tid" InsertCommand="INSERT INTO [teacher_details] ([tid], [fname], [lname], [gender], [doj], [phn], [email], [dept], [address], [image]) VALUES (@tid, @fname, @lname, @gender, @doj, @phn, @email, @dept, @address, @image)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [teacher_details]" UpdateCommand="UPDATE [teacher_details] SET [fname] = @fname, [lname] = @lname, [gender] = @gender, [doj] = @doj, [phn] = @phn, [email] = @email, [dept] = @dept, [address] = @address, [image] = @image WHERE [tid] = @tid" OnSelecting="SqlDataSource2_Selecting">
          <DeleteParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="tid" PropertyName="SelectedValue" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="tid" Type="String" />
              <asp:Parameter Name="fname" Type="String" />
              <asp:Parameter Name="lname" Type="String" />
              <asp:Parameter Name="gender" Type="String" />
              <asp:Parameter Name="doj" Type="String" />
              <asp:Parameter Name="phn" Type="String" />
              <asp:Parameter Name="email" Type="String" />
              <asp:Parameter Name="dept" Type="String" />
              <asp:Parameter Name="address" Type="String" />
              <asp:Parameter Name="image" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="fname" Type="String" />
              <asp:Parameter Name="lname" Type="String" />
              <asp:Parameter Name="gender" Type="String" />
              <asp:Parameter Name="doj" Type="String" />
              <asp:Parameter Name="phn" Type="String" />
              <asp:Parameter Name="email" Type="String" />
              <asp:Parameter Name="dept" Type="String" />
              <asp:Parameter Name="address" Type="String" />
              <asp:Parameter Name="image" Type="String" />
              <asp:Parameter Name="tid" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      </div> 
        </div> 

</asp:Content>

