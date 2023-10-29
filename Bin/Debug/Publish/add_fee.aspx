<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="add_fee.aspx.cs" Inherits="add_fee" %>

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
          <h1>Add Fees Details:</h1>
          <table class="auto-style1">
              <tr>
                  <td>Enter Roll No.</td>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Select Class</td>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2drop" DataTextField="class" DataValueField="class">
                      </asp:DropDownList>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>Total Fees</td>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Paid</td>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>Balance</td>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
                  </td>
                  <td>
                      <asp:Button ID="Button2" runat="server" CausesValidation="False" Text="CANCLE" />
                  </td>
                  <td>&nbsp;</td>
              </tr>
          </table>

      </div>
        </main> 
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [fees] WHERE [rollno] = @rollno" InsertCommand="INSERT INTO [fees] ([rollno], [class], [totalfee], [paid], [balance]) VALUES (@rollno, @class, @totalfee, @paid, @balance)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [fees]" UpdateCommand="UPDATE [fees] SET [class] = @class, [totalfee] = @totalfee, [paid] = @paid, [balance] = @balance WHERE [rollno] = @rollno">
          <DeleteParameters>
              <asp:Parameter Name="rollno" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:ControlParameter ControlID="TextBox1" Name="rollno" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
              <asp:ControlParameter ControlID="TextBox2" Name="totalfee" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox3" Name="paid" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox4" Name="balance" PropertyName="Text" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="class" Type="String" />
              <asp:Parameter Name="totalfee" Type="String" />
              <asp:Parameter Name="paid" Type="String" />
              <asp:Parameter Name="balance" Type="String" />
              <asp:Parameter Name="rollno" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2drop" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [class] FROM [Subjects]"></asp:SqlDataSource>
      </div> 
        </div> 

</asp:Content>

