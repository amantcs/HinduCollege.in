<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="stu_grid.aspx.cs" Inherits="stu_grid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
        <!-- ################################################################################################ -->
     
        
        <!-- ################################################################################################ --> 
          
    
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="rollno" DataSourceID="SqlDataSource1" >
              <Columns>
                  <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="stream" HeaderText="stream" SortExpression="stream" />
              </Columns>
      </asp:GridView>

      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="rollno" DataSourceID="SqlDataSource2">
          <Columns>
              <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
              <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
              <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
              <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
              <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
              <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
              <asp:BoundField DataField="stream" HeaderText="stream" SortExpression="stream" />
              <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
              <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
              <asp:BoundField DataField="add" HeaderText="add" SortExpression="add" />
              <asp:ImageField DataImageUrlField="image" HeaderText="Image">
              </asp:ImageField>
          </Columns>
      </asp:GridView>

          
    
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [rollno], [name], [stream] FROM [student_detail]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [student_detail] WHERE ([rollno] = @rollno)">
          <SelectParameters>
              <asp:ControlParameter ControlID="GridView1" Name="rollno" PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>

          
    
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

