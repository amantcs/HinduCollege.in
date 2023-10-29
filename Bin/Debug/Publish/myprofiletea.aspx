<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="myprofiletea.aspx.cs" Inherits="myprofiletea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [teacher_details] WHERE ([tid] = @tid)">
    <SelectParameters>
        <asp:SessionParameter Name="tid" SessionField="tid" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" CellPadding ="4" ForeColor ="#333333" GridLines ="None"  AutoGenerateRows="False" DataKeyNames="tid" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
    <FooterStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White"  />
    <CommandRowStyle BackColor ="#E2DED6" Font-Bold ="true" />
    <EditRowStyle BackColor ="#999999" />
    <RowStyle BackColor ="#F7F6F3" ForeColor ="#333333" />
    <PagerStyle BackColor ="#284775" ForeColor ="White" HorizontalAlign ="Center" />
    <FieldHeaderStyle BackColor ="#E9ECF1" Font-Bold ="true" />
    <HeaderStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White" />
    <AlternatingRowStyle BackColor ="White" ForeColor ="#284775" />  
    <Fields>
        <asp:BoundField DataField="tid" HeaderText="Teacher ID" ReadOnly="True" SortExpression="tid" />
        <asp:BoundField DataField="fname" HeaderText="Father Name" SortExpression="fname" />
        <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
        <asp:BoundField DataField="doj" HeaderText="D.O.J." SortExpression="doj" />
        <asp:BoundField DataField="phn" HeaderText="Contact No." SortExpression="phn" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
        
        <asp:ImageField DataImageUrlField="image" HeaderText="Image">
        </asp:ImageField>
    </Fields>
</asp:DetailsView>
</asp:Content>

