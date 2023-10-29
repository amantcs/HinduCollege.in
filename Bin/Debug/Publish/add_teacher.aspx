<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="add_teacher.aspx.cs" Inherits="teacher_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
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
          <h1>Add Teacher</h1>
          <font color="black">
              <asp:scriptmanager runat="server" />
              <asp:updatepanel runat="server">
    <contenttemplate>
          <table>
              <tr>
                  <td class="auto-style3">
                      <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="First Name"></asp:Label>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:TextBox ID="TextBox10" runat="server" Width="275px"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please fill name"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Last Name"></asp:Label>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server" Width="275px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please fill last name"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
          <font color="black">
                      <asp:Label ID="Label3" runat="server" Text="Teacher ID"></asp:Label>
                      </font>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3"> 
        
                      <asp:TextBox ID="TextBox2" runat="server" Width="271px" AutoPostBack="True" ></asp:TextBox>
             
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
          <font color="black">
                      <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
                      </font>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3"> 
         
                      <asp:DropDownList ID="DropDownList1" runat="server" >
                          <asp:ListItem>Select Department.....</asp:ListItem>
                          <asp:ListItem>Commerce and Business Management</asp:ListItem>
                          <asp:ListItem>English</asp:ListItem>
                          <asp:ListItem>Punjabi</asp:ListItem>
                          <asp:ListItem>Hindi</asp:ListItem>
                          <asp:ListItem>Computer Applications and Computer Science</asp:ListItem>
                          <asp:ListItem>Biology and Environmental Sciences</asp:ListItem>
                          <asp:ListItem>Mathematics</asp:ListItem>
                          <asp:ListItem>Chemistery</asp:ListItem>
                          <asp:ListItem>Physics and Electronics</asp:ListItem>
                          <asp:ListItem>Sanskrit</asp:ListItem>
                          <asp:ListItem>Librarian</asp:ListItem>
                          <asp:ListItem>Philosophy</asp:ListItem>
                          <asp:ListItem>History</asp:ListItem>
                          <asp:ListItem>Geography and Tourism</asp:ListItem>
                          <asp:ListItem>Economics</asp:ListItem>
                      </asp:DropDownList>
             
                  </td>
                  <td>
                      <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)" ControlToValidate="DropDownList1" ErrorMessage="Please Select Department" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
          <font color="black">
                      <asp:Label ID="Label5" runat="server" Text="Contact No."></asp:Label>
                      </font>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style1"> 

                      <asp:TextBox ID="TextBox6" runat="server" Width="275px"></asp:TextBox>
              
                  </td>
                  <td class="auto-style1">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Contact number required"></asp:RequiredFieldValidator>
                      </td>
              </tr>
              <tr>
                  <td class="auto-style3">
          <font color="black">
                      <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                      </font>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3"> 
      
                      <asp:TextBox ID="TextBox7" runat="server" Width="275px"></asp:TextBox>
              
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Email reqiured"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Invalid " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
          <font color="black">
                      <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                      </font>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3"> 
          
                      <asp:TextBox ID="TextBox8" runat="server" Width="275px"  TextMode="MultiLine"></asp:TextBox>
             
                  </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="Adress required"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3">
          <font color="black">
                      <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                      </font>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style3">
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="277px" ForeColor="Black">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:RadioButtonList>
                      </td>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please select gender"></asp:RequiredFieldValidator>
                  </td>
                
              </tr>
              <tr>
                  <td class="auto-style4">
          <font color="black">
                      <asp:Label ID="Label9" runat="server" Text="Date Of Joining" ForeColor="Black"></asp:Label>
                      </font>
                  </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
             
              <tr>
                  <td class="auto-style4">
                    <asp:TextBox ID="TextBox9" runat="server" Width="270px" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Select Date..." OnClick="Button1_Click" ForeColor="Black" />
                  </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style4">&nbsp;  
   <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                 </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style4">
                      <asp:Label ID="Label10" runat="server" Text="Upload Image"></asp:Label>
                  </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style4">
                      <asp:FileUpload ID="FileUpload1" runat="server" />
                  </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style4">
                      
                  </td>
                  <td class="auto-style2">
                      &nbsp;</td>
              </tr>
              </table> </contenttemplate>
</asp:updatepanel>
              <table cellpadding="0" cellspacing="0" class="auto-style2">
                  <tr>
                      <td>
          <font color="black">
              <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" ForeColor="Black"  />
          </font>
                      </td>
                      <td>
                          <asp:Button ID="Button3" runat="server" CausesValidation="False" Text="Cancel" />
                      </td>
                  </tr>
          </table>
          </font>
        <!-- ################################################################################################ -->
       
        
        <!-- ################################################################################################ --> 
      </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [teacher_details] WHERE [tid] = @tid" InsertCommand="INSERT INTO [teacher_details] ([tid], [fname], [lname], [gender], [doj], [phn], [email], [dept], [address], [image]) VALUES (@tid, @fname, @lname, @gender, @doj, @phn, @email, @dept, @address, @image)" SelectCommand="SELECT * FROM [teacher_details]" UpdateCommand="UPDATE [teacher_details] SET [fname] = @fname, [lname] = @lname, [gender] = @gender, [doj] = @doj, [phn] = @phn, [email] = @email, [dept] = @dept, [address] = @address, [image] = @image WHERE [tid] = @tid" OnInserting="SqlDataSource1_Inserting" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
              <DeleteParameters>
                  <asp:Parameter Name="tid" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:ControlParameter ControlID="TextBox2" Name="tid" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="TextBox10" Name="fname" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="TextBox1" Name="lname" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="RadioButtonList1" Name="gender" PropertyName="SelectedValue" Type="String" />
                  <asp:ControlParameter ControlID="TextBox9" Name="doj" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="TextBox6" Name="phn" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="TextBox7" Name="email" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="DropDownList1" Name="dept" PropertyName="SelectedValue" Type="String" />
                  <asp:ControlParameter ControlID="TextBox8" Name="address" PropertyName="Text" Type="String" />
                  <asp:FormParameter Name="image" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="fname" Type="String" />
                  <asp:Parameter Name="lname" Type="String" />
                  <asp:Parameter Name="gender" Type="String" />
                  <asp:Parameter Name="doj" Type="String" />
                  <asp:Parameter Name="phn" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="dept" Type="String" />
                  <asp:Parameter Name="address" Type="String" />
                  <asp:Parameter Name="image" Type="String" />
                  <asp:Parameter Name="tid" Type="String" />
              </UpdateParameters>
      </asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [tid] FROM [teacher_details]"></asp:SqlDataSource>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 
</asp:Content>

