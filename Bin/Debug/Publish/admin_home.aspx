<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>Admissions</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="ad_rules.aspx"  >General Rules</a></li>
            <li><a href="ad_schedule.aspx"  >Schedule</a></li>
            <li><a href="fee.aspx" >Fee Structure</a></li>
            <li><a href="scholar.aspx"  >Scholarships</a></li>
           <li><a href="Admission.aspx"  >Apply Online</a> </li>
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        <h1>Welcome to Admin Panel</h1>
          <p><font color="black">&nbsp;Here you can add,modify or delete any record dynaminally!!!
</font> &nbsp;</p>

          
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear">
      </div>
        </main> 
      </div> 
        </div> 

</asp:Content>

