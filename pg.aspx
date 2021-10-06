<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="pg.aspx.cs" Inherits="pg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
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
         
    <script src="faculty.js"></script>
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
          <h6>Courses</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="ug.aspx"  > UG</a> </li>
            <li><a href="pg.aspx"  >PG</a></li>
            <li><a href="diploma.aspx" >Diploma</a></li>
            <li><a href="eligibility_condition.aspx" >Eligibility Conditions</a></li>
         
          
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
       <div id="links">
          <h1>Post - Graduate Courses</h1>
          <ul>
              <li><a href ="#mscmath">M.Sc.(Mathematics)</a></li>
              <li><a href ="#ma">M.A.(Economics)</a></li>
              <li><a href="#mcom">M.Com.</a></li>
              <li><a href="#msc">M.Sc.(Computer Science)</a></li>
               
          </ul>   
           </div>     
          <br />
         
                <div class="scrollable">
                    <div id="mscmath">
          <table>
              <thead >
              <tr>
                  <th>M.Sc.(Mathematrics)     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M.Sc.(Mathematics) Sem I &amp; II</td>
              </tr>
              <tr>
                  <td>1. Real Analysis</td>
              </tr>
              <tr>
                  <td>2. Complex Analysis &amp; Differential Geomatery</td>
              </tr>
              <tr>
                  <td>3. Modern Algebra</td>
              </tr>
              <tr>
                  <td>4. Mechanics</td>
              </tr>
              <tr>
                  <td>5. Differential an Integral Equations</td>
              </tr>
              <tr>
                  <td style="font-size: large; color: #000000; background-color: #C0C0C0;">M.Sc.(Mathematics) Sem III &amp; IV </td>
              </tr>
              <tr>
                  <td>1.Masure theory and Functional Analysis</td>
              </tr>
              <tr>
                  <td>2.Topology</td>
              </tr>
              <tr>
                  <td>3.Operation Research</td>
              </tr>
              <tr>
                  <td>4.Mathematical Statistics</td>
              </tr>
              <tr>
                  <td>5.Discrete mathematics</td>
              </tr>
              <tr>
                  <td class="auto-style1">6.Number Theory</td>
              </tr>
              </table>
                    
       </div> 
          <br />
                    <div id="ma">
          <table>
              <thead >
              <tr>
                  <th>M.A.(Economics)     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M.A.(Economics) Semester-I</td>
              </tr>
              <tr>
                  <td>1.Micro Economics I</td>
              </tr>
              <tr>
                  <td>2. Macro Economics I</td>
              </tr>
              <tr>
                  <td class="auto-style1">3. Quantitative Methods for Economics I</td>
              </tr>
              <tr>
                  <td>4.Optional Paper</td>
              </tr>
              <tr>
                  <td>5.Optional paper</td>
              </tr>
              <tr>
                  <td style="font-size: large; color: #000000; background-color: #C0C0C0;">M.A.(Economics) Semester-II</td>
              </tr>
              <tr>
                  <td>1.Micro Economics II</td>
              </tr>
              <tr>
                  <td>2.Macro Economics II</td>
              </tr>
              <tr>
                  <td>3. Quantitative Methods</td>
              </tr>
              <tr>
                  <td class="auto-style1">4.Optional Paper</td>
              </tr>
              <tr>
                  <td class="auto-style1">5Optional Paper</td>
              </tr>
              <tr>
                  <td class="auto-style1" style="font-size: large; color: #000000; background-color: #C0C0C0;">M.A.(Economics) Semester-III</td>
              </tr>
              <tr>
                  <td class="auto-style1">1. Economics of Development</td>
              </tr>
              <tr>
                  <td class="auto-style1">2. International Economics</td>
              </tr>
              <tr>
                  <td class="auto-style1">3. Indian Economy</td>
              </tr>
              <tr>
                  <td class="auto-style1">4. Optional Paper</td>
              </tr>
              <tr>
                  <td class="auto-style1">5. Optional Paper</td>
              </tr>
              <tr>
                  <td class="auto-style1" style="font-size: large; color: #000000; background-color: #C0C0C0;">M.A.(Economics) Semester-IV</td>
              </tr>
              <tr>
                  <td class="auto-style1">1 Economics of Planning</td>
              </tr>
              <tr>
                  <td class="auto-style1">2. International Economics II</td>
              </tr>
              <tr>
                  <td class="auto-style1">3. Punjab Economy</td>
              </tr>
              <tr>
                  <td class="auto-style1">4. Optional Paper<br />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style1">5. Optional Paper</td>
              </tr>
              </table>
                        </div> 
          <br />
                    <div id ="mcom">
                    <table>
              <thead >
              <tr>
                  <th>Master of Commerce(M.Com)-Three Year Programme     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M.Com. Semester I</td>
              </tr>
              <tr>
                  <td>1. Managerial economics</td>
              </tr>
              <tr>
                  <td>2. Statistical analysis for Bisiness</td>
              </tr>
              <tr>
                  <td>3.Management principles</td>
              </tr>
              <tr>
                  <td>4.Business Environment</td>
              </tr>
              <tr>
                  <td>5.Management Accounting</td>
              </tr>
              <tr>
                  <td>6.Seminar</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">&nbsp;M.Com.&nbsp;Semester II</td>
              </tr>
              <tr>
                  <td>1. Corporate Financial Accounting</td>
              </tr>
              <tr>
                  <td>2. Financial management</td>
              </tr>
              <tr>
                  <td>3. Research Methodology</td>
              </tr>
              <tr>
                  <td>4. Human Resource Management</td>
              </tr>
              <tr>
                  <td>5. Computer Appication in Business</td>
              </tr>
              <tr>
                  <td>6. Viva Voce</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M. Com. Semseter III</td>
              </tr>
              <tr>
                  <td>1.Banking and Insurance Services</td>
              </tr>
              <tr>
                  <td>2. Seminar</td>
              </tr>
              <tr>
                  <td>3. Security Analysis and Portfolio Management</td>
              </tr>
              <tr>
                  <td>4. Contemporary Accounting</td>
              </tr>
              <tr>
                  <td>5.Consumer Behaviour</td>
              </tr>
              <tr>
                  <td>Research for Marketing Decisions</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M.Com. Semester IV</td>
              </tr>
                        <tr>
                  <td>1.International Accounting</td>
                        </tr>
                        <tr>
                  <td>2. E - Commerce</td>
                        </tr>
              <tr>
                  <td>3.International Financial Management</td>
              </tr>
              <tr>
                  <td>4.Coorporate Tax and Laws</td>
              </tr>
              <tr>
                  <td>5. Financial Markets and financial services</td>
              </tr>
              </table>
                        </div>
                    <div id="msc"> 
                    <table>
              <thead >
              <tr>
                  <th>M.Sc.(Computer Science)     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M.Sc.(Computer Science) Semester I</td>
              </tr>
              <tr>
                  <td>1. Advanced Data Structures</td>
              </tr>
              <tr>
                  <td>2. Advanced Computer Architecture</td>
              </tr>
              <tr>
                  <td>3.Network design and Performance Analysis</td>
              </tr>
              <tr>
                  <td>4.Discrete Structures</td>
              </tr>
              <tr>
                  <td>5.Soft Computing</td>
              </tr>
              <tr>
                  <td>6.Programming Laboratory</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">&nbsp;M.Sc.(Computer Science) Semester II</td>
              </tr>
              <tr>
                  <td>1. Theory of Computation</td>
              </tr>
              <tr>
                  <td>2. Image Processing </td>
              </tr>
              <tr>
                  <td>3. Design and Analysis of Algorithems</td>
              </tr>
              <tr>
                  <td>4. Formal Specification and Verification</td>
              </tr>
              <tr>
                  <td>5. Distributed Database System</td>
              </tr>
              <tr>
                  <td>6.Programmong Laboratory II</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M.Sc.(Computer Science) Semester III</td>
              </tr>
              <tr>
                  <td>1.Advanced Software Engeneering</td>
              </tr>
              <tr>
                  <td>2. System Software</td>
              </tr>
              <tr>
                  <td>3. Data Mining and Warehousing</td>
              </tr>
              <tr>
                  <td>4. Concept of Core nd Advanced Java</td>
              </tr>
              <tr>
                  <td>5.Netwirking Programming</td>
              </tr>
              <tr>
                  <td>6. Programming Laboratory III</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">M.Sc.(Computer Science) Semester IV</td>
              </tr>
                        <tr>
                  <td>1.Advanced Web Technologies using ASP.NET</td>
                        </tr>
                        <tr>
                  <td>2. Microprocesser and its Applications</td>
                        </tr>
              <tr>
                  <td>3.Object Oriented Modeling</td>
              </tr>
              <tr>
                  <td>4.Programming Laboratory IV</td>
              </tr>
              <tr>
                  <td>5.Project Work</td>
              </tr>
              </table>
                        </div> 
                   </div> 
       
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 
</asp:Content>

