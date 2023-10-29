<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="upload_notes.aspx.cs" Inherits="upload_notes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Select Class</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1class" DataTextField="class" DataValueField="class">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Subject Name</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Topic Name</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>File</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPLOAD" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="CANCEL" />
            </td>
        </tr>
    </table>
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1class" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [class] FROM [Subjects]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [upload_file] WHERE [topic_name] = @topic_name" InsertCommand="INSERT INTO [upload_file] ([class], [sub_name], [topic_name], [file]) VALUES (@class, @sub_name, @topic_name, @file)" OnInserting="SqlDataSource1_Inserting" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [upload_file]" UpdateCommand="UPDATE [upload_file] SET [class] = @class, [sub_name] = @sub_name, [file] = @file WHERE [topic_name] = @topic_name">
        <DeleteParameters>
            <asp:Parameter Name="topic_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="sub_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="topic_name" PropertyName="Text" Type="String" />
            <asp:FormParameter Name="file" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="class" Type="String" />
            <asp:Parameter Name="sub_name" Type="String" />
            <asp:Parameter Name="file" Type="String" />
            <asp:Parameter Name="topic_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>



</asp:Content>

