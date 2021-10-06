﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="st_fee.aspx.cs" Inherits="st_fee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="rollno" DataSourceID="SqlDataSource1" Height="50px" Width="100%" CellPadding ="4" ForeColor ="#333333" GridLines ="None" >
   <FooterStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White"  />
    <CommandRowStyle BackColor ="#E2DED6" Font-Bold ="true" />
    <EditRowStyle BackColor ="#999999" />
    <RowStyle BackColor ="#F7F6F3" ForeColor ="#333333" />
    <PagerStyle BackColor ="#284775" ForeColor ="White" HorizontalAlign ="Center" />
    <FieldHeaderStyle BackColor ="#E9ECF1" Font-Bold ="true" />
    <HeaderStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White" />
    <AlternatingRowStyle BackColor ="White" ForeColor ="#284775" />  
         <Fields>
        <asp:BoundField DataField="rollno" HeaderText="Roll No." ReadOnly="True" SortExpression="rollno" />
        <asp:BoundField DataField="class" HeaderText="Class" SortExpression="class" />
        <asp:BoundField DataField="totalfee" HeaderText="Total Fees" SortExpression="totalfee" />
        <asp:BoundField DataField="paid" HeaderText="Paid" SortExpression="paid" />
        <asp:BoundField DataField="balance" HeaderText="Balance" SortExpression="balance" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [fees] WHERE ([rollno] = @rollno)">
    <SelectParameters>
        <asp:SessionParameter Name="rollno" SessionField="rollno" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

