<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="del_student.aspx.cs" Inherits="del_student" %>

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
            <li><a href="st_signup.aspx"  >Student Sign-Up</a></li>
            <li><a href="teacher_signup.aspx"  >Teacher Sign-Up</a></li>
             
          
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
          <h1>Delete Student Record:</h1>
          <table class="auto-style1">
              <tr>
                  <td>Enter Student Roll NO</td>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="rollno" DataValueField="rollno">
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [rollno] FROM [student_detail]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student_detail] WHERE [rollno] = @rollno" InsertCommand="INSERT INTO [student_detail] ([rollno], [name], [fname], [mname], [gender], [dob], [stream], [session], [phn], [email], [add]) VALUES (@rollno, @name, @fname, @mname, @gender, @dob, @stream, @session, @phn, @email, @add)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [student_detail]" UpdateCommand="UPDATE [student_detail] SET [name] = @name, [fname] = @fname, [mname] = @mname, [gender] = @gender, [dob] = @dob, [stream] = @stream, [session] = @session, [phn] = @phn, [email] = @email, [add] = @add WHERE [rollno] = @rollno">
          <DeleteParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="rollno" PropertyName="SelectedValue" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="rollno" Type="String" />
              <asp:Parameter Name="name" Type="String" />
              <asp:Parameter Name="fname" Type="String" />
              <asp:Parameter Name="mname" Type="String" />
              <asp:Parameter Name="gender" Type="String" />
              <asp:Parameter Name="dob" Type="DateTime" />
              <asp:Parameter Name="stream" Type="String" />
              <asp:Parameter Name="session" Type="String" />
              <asp:Parameter Name="phn" Type="String" />
              <asp:Parameter Name="email" Type="String" />
              <asp:Parameter Name="add" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="name" Type="String" />
              <asp:Parameter Name="fname" Type="String" />
              <asp:Parameter Name="mname" Type="String" />
              <asp:Parameter Name="gender" Type="String" />
              <asp:Parameter Name="dob" Type="DateTime" />
              <asp:Parameter Name="stream" Type="String" />
              <asp:Parameter Name="session" Type="String" />
              <asp:Parameter Name="phn" Type="String" />
              <asp:Parameter Name="email" Type="String" />
              <asp:Parameter Name="add" Type="String" />
              <asp:Parameter Name="rollno" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      </div> 
        </div> 

</asp:Content>

