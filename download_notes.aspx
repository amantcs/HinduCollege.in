<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="download_notes.aspx.cs" Inherits="download_notes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="topic_name" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="class" HeaderText="Class Name" SortExpression="class" />
            <asp:BoundField DataField="sub_name" HeaderText="Subject" SortExpression="sub_name" />
            <asp:BoundField DataField="topic_name" HeaderText="Topic" ReadOnly="True" SortExpression="topic_name" />
            <asp:BoundField DataField="file" HeaderText="File Name" SortExpression="file" />
                     </Columns>
</asp:GridView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText = "No files uploaded">
        <Columns>
            <asp:BoundField DataField="Text" HeaderText="File Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [upload_file]"></asp:SqlDataSource>
   
</asp:Content>

