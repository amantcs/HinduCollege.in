<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="edit_student.aspx.cs" Inherits="edit_student" %>

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
          <h1>Edit Teacher Record:</h1>
          <table class="auto-style1">
              <tr>
                  <td class="auto-style2">Select Student Roll N0</td>
                  <td class="auto-style2">
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="rollno" DataValueField="rollno"  AutoPostBack="True" Height="17px">
                      </asp:DropDownList>
                  </td>
              </tr>
          </table>
          

          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="100%" CellPadding ="4" ForeColor ="#333333" GridLines ="None">
             <FooterStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White"  />
    <CommandRowStyle BackColor ="#E2DED6" Font-Bold ="true" />
    <EditRowStyle BackColor ="#999999" />
    <RowStyle BackColor ="#F7F6F3" ForeColor ="#333333" />
    <PagerStyle BackColor ="#284775" ForeColor ="White" HorizontalAlign ="Center" />
    <FieldHeaderStyle BackColor ="#E9ECF1" Font-Bold ="true" />
    <HeaderStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White" />
    <AlternatingRowStyle BackColor ="White" ForeColor ="#284775" />
                <Fields>
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                  <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                  <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                  <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                  <asp:BoundField DataField="stream" HeaderText="stream" SortExpression="stream" />
                  <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
                  <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                  <asp:BoundField DataField="add" HeaderText="add" SortExpression="add" />
              </Fields>
          </asp:DetailsView>
          

      </div>
        </main> 
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [rollno] FROM [student_detail]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [name], [fname], [mname], [gender], [dob], [stream], [phn], [email], [add] FROM [student_detail] WHERE ([rollno] = @rollno)" UpdateCommand="UPDATE [student_detail] SET [name] = @name, [fname] = @fname, [mname] = @mname, [gender] = @gender, [dob] = @dob, [stream] = @stream, [phn] = @phn, [email] = @email, [add] = @add WHERE [rollno] = @rollno">
          <SelectParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="rollno" PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
          <UpdateParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="rollno" PropertyName="SelectedValue" />
          </UpdateParameters>
      </asp:SqlDataSource>
      </div> 
        </div> 

</asp:Content>

