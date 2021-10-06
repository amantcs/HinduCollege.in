<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="edit_teacher.aspx.cs" Inherits="edit_teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
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
          <h1>Edit Teacher Record:</h1>
          <table class="auto-style1">
              <tr>
                  <td class="auto-style2">Select Teacher ID</td>
                  <td class="auto-style2">
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tid" DataValueField="tid"  AutoPostBack="True" Height="17px">
                      </asp:DropDownList>
                  </td>
              </tr>
          </table>
          

          <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateEditButton="True" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="100%" CellPadding ="4" ForeColor ="#333333" GridLines ="None">
              <FooterStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White"  />
    <CommandRowStyle BackColor ="#E2DED6" Font-Bold ="true" />
    <EditRowStyle BackColor ="#999999" />
    <RowStyle BackColor ="#F7F6F3" ForeColor ="#333333" />
    <PagerStyle BackColor ="#284775" ForeColor ="White" HorizontalAlign ="Center" />
    <FieldHeaderStyle BackColor ="#E9ECF1" Font-Bold ="true" />
    <HeaderStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White" />
    <AlternatingRowStyle BackColor ="White" ForeColor ="#284775" />
              <Fields>
                  <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                  <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                  <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                  <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
                  <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
                  <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                  <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                  <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                      <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                  </asp:ImageField>
              </Fields>
          </asp:DetailsView>
          

      </div>
        </main> 
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [tid] FROM [teacher_details]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [fname], [lname], [gender], [doj], [phn], [email], [dept], [address], [image] FROM [teacher_details] WHERE ([tid] = @tid)" UpdateCommand="UPDATE [teacher_details] SET [fname] = @fname, [lname] = @lname, [gender] = @gender, [doj] = @doj, [phn] = @phn, [email] = @email, [dept] = @dept, [address] = @address, [image] = @image WHERE [tid] = @tid">
          <SelectParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="tid" PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
          <UpdateParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="tid" PropertyName="SelectedValue" />
          </UpdateParameters>
      </asp:SqlDataSource>
      </div> 
        </div> 

</asp:Content>

