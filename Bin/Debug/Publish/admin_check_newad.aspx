<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="admin_check_newad.aspx.cs" Inherits="admin_check_newad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>Admissions</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="ad_rules.aspx"  >General Rules</a></li>
            <li><a href="ad_schedule.aspx"  >Schedule</a></li>
            <li><a href="fee.aspx" >Fee Structure</a></li>
            <li><a href="scholar.aspx"  >Scholarships</a></li>
           <li><a href="Admission.aspx"  >Apply Online</a> </li>
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        <h1>New Admissions</h1>
          <p>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [newad] WHERE [email] = @email" InsertCommand="INSERT INTO [newad] ([name], [fathername], [mname], [dob], [gender], [add], [city], [state], [country], [pin], [mobile], [email], [expass], [uniboard], [passyear], [percent], [course], [image]) VALUES (@name, @fathername, @mname, @dob, @gender, @add, @city, @state, @country, @pin, @mobile, @email, @expass, @uniboard, @passyear, @percent, @course, @image)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [newad]" UpdateCommand="UPDATE [newad] SET [name] = @name, [fathername] = @fathername, [mname] = @mname, [dob] = @dob, [gender] = @gender, [add] = @add, [city] = @city, [state] = @state, [country] = @country, [pin] = @pin, [mobile] = @mobile, [expass] = @expass, [uniboard] = @uniboard, [passyear] = @passyear, [percent] = @percent, [course] = @course, [image] = @image WHERE [email] = @email">
                  <DeleteParameters>
                      <asp:Parameter Name="email" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="name" Type="String" />
                      <asp:Parameter Name="fathername" Type="String" />
                      <asp:Parameter Name="mname" Type="String" />
                      <asp:Parameter Name="dob" Type="DateTime" />
                      <asp:Parameter Name="gender" Type="String" />
                      <asp:Parameter Name="add" Type="String" />
                      <asp:Parameter Name="city" Type="String" />
                      <asp:Parameter Name="state" Type="String" />
                      <asp:Parameter Name="country" Type="String" />
                      <asp:Parameter Name="pin" Type="String" />
                      <asp:Parameter Name="mobile" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                      <asp:Parameter Name="expass" Type="String" />
                      <asp:Parameter Name="uniboard" Type="String" />
                      <asp:Parameter Name="passyear" Type="String" />
                      <asp:Parameter Name="percent" Type="String" />
                      <asp:Parameter Name="course" Type="String" />
                      <asp:Parameter Name="image" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="name" Type="String" />
                      <asp:Parameter Name="fathername" Type="String" />
                      <asp:Parameter Name="mname" Type="String" />
                      <asp:Parameter Name="dob" Type="DateTime" />
                      <asp:Parameter Name="gender" Type="String" />
                      <asp:Parameter Name="add" Type="String" />
                      <asp:Parameter Name="city" Type="String" />
                      <asp:Parameter Name="state" Type="String" />
                      <asp:Parameter Name="country" Type="String" />
                      <asp:Parameter Name="pin" Type="String" />
                      <asp:Parameter Name="mobile" Type="String" />
                      <asp:Parameter Name="expass" Type="String" />
                      <asp:Parameter Name="uniboard" Type="String" />
                      <asp:Parameter Name="passyear" Type="String" />
                      <asp:Parameter Name="percent" Type="String" />
                      <asp:Parameter Name="course" Type="String" />
                      <asp:Parameter Name="image" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="email" DataSourceID="SqlDataSource1" Height="50px" Width="100%" CellPadding ="4" ForeColor ="#333333" GridLines ="None">
                  <FooterStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White"  />
    <CommandRowStyle BackColor ="#E2DED6" Font-Bold ="true" />
    <EditRowStyle BackColor ="#999999" />
    <RowStyle BackColor ="#F7F6F3" ForeColor ="#333333" />
    <PagerStyle BackColor ="#284775" ForeColor ="Black" HorizontalAlign ="Center" />
    <FieldHeaderStyle BackColor ="#E9ECF1" Font-Bold ="true" />
    <HeaderStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White" />
    <AlternatingRowStyle BackColor ="White" ForeColor ="#284775" />  
                   <Fields>
                      <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                      <asp:BoundField DataField="fathername" HeaderText="Father Name" SortExpression="fathername" />
                      <asp:BoundField DataField="mname" HeaderText="Mother Name" SortExpression="mname" />
                      <asp:BoundField DataField="dob" HeaderText="D.O.B." SortExpression="dob" />
                      <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                      <asp:BoundField DataField="add" HeaderText="Address" SortExpression="add" />
                      <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                      <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                      <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                      <asp:BoundField DataField="pin" HeaderText="PIN" SortExpression="pin" />
                      <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                      <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" />
                      <asp:BoundField DataField="expass" HeaderText="Examination Passed" SortExpression="expass" />
                      <asp:BoundField DataField="uniboard" HeaderText="Name of University/Board" SortExpression="uniboard" />
                      <asp:BoundField DataField="passyear" HeaderText="Year of Passing" SortExpression="passyear" />
                      <asp:BoundField DataField="percent" HeaderText="Percentage" SortExpression="percent" />
                      <asp:BoundField DataField="course" HeaderText="Course Name" SortExpression="course" />
                      <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                      </asp:ImageField>
                  </Fields>
              </asp:DetailsView>
          </p>

          
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear">
      </div>
        </main> 
      </div> 
        </div> 

</asp:Content>

