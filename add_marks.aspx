<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="add_marks.aspx.cs" Inherits="add_marks" %>

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
         <h1>Add Marks</h1>
          <table class="auto-style1">
              <tr>
                  <td>Select Class</td>
                  <td>
                      <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="stream" DataValueField="stream">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td>Roll No</td>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 1</td>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 2</td>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 3</td>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 4 </td>
                  <td>
                      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 5</td>
                  <td>
                      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 6</td>
                  <td>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 7</td>
                  <td>
                      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>Subject 8</td>
                  <td>
                      <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                  </td>
                  <td>
                      <asp:Button ID="Button2" runat="server" Text="Button" />
                  </td>
              </tr>
          </table>

      </div> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [stream] FROM [student_detail]"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Subjects] WHERE ([class] = @class)">
          <SelectParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
      
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [marks] WHERE [rollno] = @rollno" InsertCommand="INSERT INTO [marks] ([rollno], [class], [subject1], [subject2], [subject3], [subject4], [subject5], [subject6], [subject7], [subject8]) VALUES (@rollno, @class, @subject1, @subject2, @subject3, @subject4, @subject5, @subject6, @subject7, @subject8)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [marks]" UpdateCommand="UPDATE [marks] SET [class] = @class, [subject1] = @subject1, [subject2] = @subject2, [subject3] = @subject3, [subject4] = @subject4, [subject5] = @subject5, [subject6] = @subject6, [subject7] = @subject7, [subject8] = @subject8 WHERE [rollno] = @rollno">
          <DeleteParameters>
              <asp:Parameter Name="rollno" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:ControlParameter ControlID="TextBox1" Name="rollno" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
              <asp:ControlParameter ControlID="TextBox2" Name="subject1" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox3" Name="subject2" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox4" Name="subject3" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox5" Name="subject4" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox6" Name="subject5" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox7" Name="subject6" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox8" Name="subject7" PropertyName="Text" Type="String" />
              <asp:ControlParameter ControlID="TextBox9" Name="subject8" PropertyName="Text" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="class" Type="String" />
              <asp:Parameter Name="subject1" Type="String" />
              <asp:Parameter Name="subject2" Type="String" />
              <asp:Parameter Name="subject3" Type="String" />
              <asp:Parameter Name="subject4" Type="String" />
              <asp:Parameter Name="subject5" Type="String" />
              <asp:Parameter Name="subject6" Type="String" />
              <asp:Parameter Name="subject7" Type="String" />
              <asp:Parameter Name="subject8" Type="String" />
              <asp:Parameter Name="rollno" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="class" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
          <Columns>
              <asp:BoundField DataField="class" HeaderText="class" ReadOnly="True" SortExpression="class" />
              <asp:BoundField DataField="subject1" HeaderText="subject1" SortExpression="subject1" />
              <asp:BoundField DataField="subject2" HeaderText="subject2" SortExpression="subject2" />
              <asp:BoundField DataField="subject3" HeaderText="subject3" SortExpression="subject3" />
              <asp:BoundField DataField="subject4" HeaderText="subject4" SortExpression="subject4" />
              <asp:BoundField DataField="subject5" HeaderText="subject5" SortExpression="subject5" />
              <asp:BoundField DataField="subject6" HeaderText="subject6" SortExpression="subject6" />
              <asp:BoundField DataField="subject7" HeaderText="subject7" SortExpression="subject7" />
              <asp:BoundField DataField="subject8" HeaderText="subject8" SortExpression="subject8" />
          </Columns>
      </asp:GridView>
        <div class ="clear" ></div>
        </main> 
      </div> 
         </div> 
</asp:Content>

