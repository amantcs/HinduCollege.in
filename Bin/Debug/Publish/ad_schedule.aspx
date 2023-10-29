<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ad_schedule.aspx.cs" Inherits="ad_schedule" %>

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
       <h6>Admissions</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="ad_rules.aspx"  >General Rules</a></li>
            <li><a href="ad_schedule.aspx"  >Schedule</a></li>
            <li><a href="fee.aspx" >Fee Structure</a></li>
            <li><a href="scholar.aspx"  >Scholarships</a></li>
           <li><a href="Admission.aspx" >Apply Online</a> </li>
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
         <div id="content" class="two_third"> 
          <!-- ################################################################################################ -->
            <h1>Admission Scedule</h1>
            <font color="black"> <table class="auto-style1">
                 <tr>
                     <td>Normal date of Admission by the College</td>
                     <td>July 7, 2015</td>
                 </tr>
                 <tr>
                     <td>Admission by the&nbsp; college with late of Rs. 50</td>
                     <td>July 8, 2015 to July 14,2015</td>
                 </tr>
                 <tr>
                     <td>Admission by the&nbsp; college with late of Rs. 100</td>
                     <td>July 15, 2015 to July 30, 2015</td>
                 </tr>
                 <tr>
                     <td>Admission by the&nbsp; college with late of Rs. 1000</td>
                     <td>July 31, 2015 to Aug 6, 2015</td>
                 </tr>
                 <tr>
                     <td>Admission by the&nbsp; college with late of Rs. 5000</td>
                     <td>Aug 7, 2015 to Aug 13 30, 2015</td>
                 </tr>
             </table></font>
           
               <!-- ################################################################################################ -->
             </div>       
        <div class="clear"></div>
        </main> 
      </div> 
        </div> 
</asp:Content>

