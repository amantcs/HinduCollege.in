<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="fee.aspx.cs" Inherits="fee" %>

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
            <script src="jquery-2.1.3.min.js"></script>
    <script type ="text/javascript"  >
        $(function () {
            $('ul a').bind('click', function (event) {
                var $anchor = $(this);
                $('html,body').stop().animate({
                    scrollTop: $($anchor.attr('href')).offset().top
                }, 2000);
                event.preventDefault();
            });
            $('a').bind('click', function (event) {
                var $anchor = $(this);
                $('html,body').stop().animate({
                    scrollTop: $($anchor.attr('href')).offset().top
                }, 2000);
                event.preventDefault();
            });
        });
        </script>
       <h6>Admissions</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="ad_rules.aspx"  >General Rules</a></li>
            <li><a href="ad_schedule.aspx" >Schedule</a></li>
            <li><a href="fee.aspx" >Fee Structure</a></li>
            <li><a href="scholar.aspx" >Scholarships</a></li>
           <li><a href="Admission.aspx" >Apply Online</a> </li>
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
       <div id="links">
           <ul>
               <li><a href="#annual">Annual Charges</a></li>
               <li><a href="#mon">Monthly Charges</a></li>
               <li><a href="#uni">University Charges</a></li>
           </ul>
       </div>
          <div id="annual">
          <h1>Annual Charges</h1>
          <font color="black">
              
          <table class="auto-style1">
              <thead>
              <tr>
                  <th>Category</th>
                  <th>Rupees</th>
              </tr>
                  </thead>

              <tr>
                  <td>Admission Fee</td>
                  <td>15.00</td>
              </tr>
              <tr>
                  <td>Library Upkeep</td>
                  <td>200.00</td>
              </tr>
              <tr>
                  <td>N.C.C. &amp; N.S.S.</td>
                  <td>100.00</td>
              </tr>
              <tr>
                  <td>Dilapidation Fee</td>
                  <td>200.00</td>
              </tr>
              <tr>
                  <td>Cycle Fee</td>
                  <td>500.00</td>
              </tr>
              <tr>
                  <td>Correspondence Fee (in India)</td>
                  <td>200.00</td>
              </tr>
              <tr>
                  <td>Scooter/MotorCycle</td>
                  <td>1200.00</td>
              </tr>
              <tr>
                  <td>College Magazine</td>
                  <td>200.00</td>
              </tr>
              <tr>
                  <td>Student&#39;s Diary</td>
                  <td>50.00</td>
              </tr>
              <tr>
                  <td>House Exams</td>
                  <td>300.00</td>
              </tr>
              <tr>
                  <td>Lib. Security (Refundable)</td>
                  <td>100.00</td>
              </tr>
              <tr>
                  <td>Student&#39;s Welfare Fund</td>
                  <td>50.00</td>
              </tr>
              <tr>
                  <td>Student&#39;s Aid Fund</td>
                  <td>100.00</td>
              </tr>
              <tr>
                  <td>N. R. S. C.</td>
                  <td>50.00</td>
              </tr>
              <tr>
                  <td>Stationery &amp; Telephone</td>
                  <td>200.00</td>
              </tr>
              </table>
        </font>  
              </div> 
          <div id="uni">
        <h1>University Charges</h1>
              <font color="black">
          <table class="auto-style1">
              <thead>
              <tr>
                  <th>Category</th>
                  <th>Rupees</th>
              </tr>
                  </thead>
              <tr>
                  <td>NSS Fee</td>
                  <td>10.00</td>
              </tr>
              <tr>
                  <td>University Registration</td>
                  <td>300.00</td>
              </tr>
              <tr>
                  <td>University Continuation Fee</td>
                  <td>200.00</td>
              </tr>
              <tr>
                  <td>Sports Fee and Additional Sports Fee</td>
                  <td>200.00</td>
              </tr>
              <tr>
                  <td>Enrolment Fee (From those joining TDC-1)</td>
                  <td>250.00</td>
              </tr>
              <tr>
                  <td>Youth welfare Fee</td>
                  <td>80.00</td>
              </tr>
              <tr>
                  <td>Holiday Home </td>
                  <td>60.00</td>
              </tr>
              <tr>
                  <td>Inter University Migration Fee </td>
                  <td>300.00</td>
              </tr>
              <tr>
                  <td>University Examination Form</td>
                  <td>100.00</td>
              </tr>
              <tr>
                  <td>World Univ. Services</td>
                  <td>25.00</td>
              </tr>
              <tr>
                  <td>University college Development</td>
                  <td>50.00</td>
              </tr>
          </table></font>
              </div> 
          <h1>Monthly Charges</h1>
          <div id="mon">
              <font color="black">
          <table class="auto-style1">
              <thead>
              <tr>
                  <th>Category</th>
                  <th>Rupees</th>
              </tr>
                  </thead>
              <tr>
                  <td>PGDCA</td>
                  <td>500.00</td>
              </tr>
              <tr>
                  <td>MA (Economics)</td>
                  <td>600.00</td>
              </tr>
              <tr>
                  <td>M.Sc. (Computer Science) BMM</td>
                  <td>800.00</td>
              </tr>
              <tr>
                  <td>M.Com.</td>
                  <td>600.00</td>
              </tr>
              <tr>
                  <td>M.Sc. (Maths)</td>
                  <td>600.00</td>
              </tr>
              <tr>
                  <td>B.A./B.Sc.’BCA/B.Com B.BA- Semester</td>
                  <td>500.00</td>
              </tr>
              <tr>
                  <td>Geography</td>
                  <td>50.00</td>
              </tr>
              <tr>
                  <td>&nbsp;&nbsp;Amalgamated Fund</td>
                  <td>300.00</td>
              </tr>
              <tr>
                  <td>Non-plan charges</td>
                  <td>700.00</td>
              </tr>
              <tr>
                  <td>Electricity Charges</td>
                  <td>60.00</td>
              </tr>
          </table>
              </font>
              </div> 
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

