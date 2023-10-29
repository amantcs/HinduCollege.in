<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="student_marks.aspx.cs" Inherits="student_marks" %>

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
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>BCA Semester I</asp:ListItem>
                <asp:ListItem>BCA Semester II</asp:ListItem>
                <asp:ListItem>BCA Semester III</asp:ListItem>
                <asp:ListItem>BCA Semester IV</asp:ListItem>
                <asp:ListItem>BCA Semester V</asp:ListItem>
                <asp:ListItem>BCA Semester VI</asp:ListItem>
            </asp:DropDownList>
        </td>
      </tr>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"  DataKeyNames="rollno" DataSourceID="SqlDataSource1" Height="50px" Width="100%" CellPadding ="4" ForeColor ="#333333" GridLines ="None" >
       <FooterStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White"  />
    <CommandRowStyle BackColor ="#E2DED6" Font-Bold ="true" />
    <EditRowStyle BackColor ="#999999" />
    <RowStyle BackColor ="#F7F6F3" ForeColor ="#333333" />
    <PagerStyle BackColor ="#284775" ForeColor ="White" HorizontalAlign ="Center" />
    <FieldHeaderStyle BackColor ="#E9ECF1" Font-Bold ="true" />
    <HeaderStyle BackColor ="#5D7B9D" Font-Bold ="true" ForeColor ="White" />
    <AlternatingRowStyle BackColor ="White" ForeColor ="#284775" />  
        
        <Fields>
            <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" SortExpression="rollno" />
            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
            <asp:BoundField DataField="subject1" HeaderText="subject1" SortExpression="subject1" />
            <asp:BoundField DataField="subject2" HeaderText="subject2" SortExpression="subject2" />
            <asp:BoundField DataField="subject3" HeaderText="subject3" SortExpression="subject3" />
            <asp:BoundField DataField="subject4" HeaderText="subject4" SortExpression="subject4" />
            <asp:BoundField DataField="subject5" HeaderText="subject5" SortExpression="subject5" />
            <asp:BoundField DataField="subject6" HeaderText="subject6" SortExpression="subject6" />
            <asp:BoundField DataField="subject7" HeaderText="subject7" SortExpression="subject7" />
            <asp:BoundField DataField="subject8" HeaderText="subject8" SortExpression="subject8" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
       
    
</table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [marks] WHERE (([rollno] = @rollno) AND ([class] = @class))">
        <SelectParameters>
            <asp:SessionParameter Name="rollno" SessionField="rollno" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

