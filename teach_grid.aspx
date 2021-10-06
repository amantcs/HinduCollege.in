<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="teach_grid.aspx.cs" Inherits="teach_grid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
        <!-- ################################################################################################ -->
     
        
        <!-- ################################################################################################ --> 
        <input type ="button" value ="Print" onclick ="window.print();" />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tid], [fname], [lname] FROM [teacher_details]" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
      </asp:SqlDataSource>
          
    
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tid" DataSourceID="SqlDataSource1" >
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="tid" HeaderText="tid" ReadOnly="True" SortExpression="tid" />
                  <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                  <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
              </Columns>
      </asp:GridView>
       
   
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [teacher_details] WHERE ([tid] = @tid)">
          <SelectParameters>
              <asp:ControlParameter ControlID="GridView1" Name="tid" PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="tid" DataSourceID="SqlDataSource2">
          <Columns>
              <asp:BoundField DataField="tid" HeaderText="tid" ReadOnly="True" SortExpression="tid" />
              <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
              <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
              <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
              <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
              <asp:BoundField DataField="phn" HeaderText="phn" SortExpression="phn" />
              <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
              <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
              <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
              <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
              <asp:ImageField DataImageUrlField="image">
              </asp:ImageField>
          </Columns>
      </asp:GridView>
          
    
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

