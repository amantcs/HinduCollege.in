<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="Apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
          /<!-- ################################################################################################ --><h6>Academics</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="faculty.aspx"  > Faculty</a> </li>
            <li><a href="house.aspx"  >House Examinations</a></li>
            <li><a href="student_marks.aspx"  >Results</a></li>
            <li><a href="Apply.aspx" >Vacancies</a></li>
          
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        <h1>Choose An Option:</h1>
          <table class="auto-style1">
              <tr>
                  <td>Your Name</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Upload Resume</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>Apply for the Post :</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="post" DataValueField="post">
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="APPLY NOW" />
                  </td>
                  <td>
                      <asp:Button ID="Button3" runat="server" Text="CANCEL" />
                  </td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>

       
        
        <!-- ################################################################################################ --> 
      </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [post] FROM [add_post] WHERE ([dept] = @dept)" OnSelecting="SqlDataSource1_Selecting">
              <SelectParameters>
                  <asp:QueryStringParameter Name="dept" QueryStringField="dept" Type="String" />
              </SelectParameters>
      </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [applied_post] WHERE [id] = @id" InsertCommand="INSERT INTO applied_post(name, resume, dept, post) VALUES (@name, @resume, @dept, @post)" OnInserting="SqlDataSource2_Inserting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT id, name, resume, dept, post FROM applied_post" UpdateCommand="UPDATE [applied_post] SET [name] = @name, [resume] = @resume, [dept] = @dept, [post] = @post WHERE [id] = @id" OnSelecting="SqlDataSource2_Selecting">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                  <asp:FormParameter Name="resume" Type="String" />
                  <asp:QueryStringParameter Name="dept" QueryStringField="dept" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList1" Name="post" PropertyName="SelectedValue" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="name" Type="String" />
                  <asp:Parameter Name="resume" Type="String" />
                  <asp:Parameter Name="dept" Type="String" />
                  <asp:Parameter Name="post" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
              </UpdateParameters>
      </asp:SqlDataSource>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

