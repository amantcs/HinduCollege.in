<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ug.aspx.cs" Inherits="ug" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 39px;
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
          <h6>Cources</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="ug.aspx" > UG</a> </li>
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
          <h1>Under - Graduate Cources</h1>
          <ul>
              <li><a href ="#ba">Bachelor of Arts</a></li>
              <li><a href ="#bsc">Bachelor of Science</a></li>
              <li><a href="#bcom">Bachelor of Commerce</a></li>
              <li><a href="#bba">Bachelor of Business Administrations</a></li>
               <li><a href="#bit">Bachelor of Science in Information Technology</a></li>
          </ul>   
           </div>     
          <br />
         
                <div class="scrollable">
                    <div id="ba">
          <table>
              <thead >
              <tr>
                  <th>Bachelor of Arts(B.A) - Three Year Programme     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">Compulsory Subjects:Two</td>
              </tr>
              <tr>
                  <td>1. English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/Punjab History and&nbsp; Culture</td>
              </tr>
              <tr>
                  <td style="font-size: large; color: #000000; background-color: #C0C0C0;">Electives Subjects: Three </td>
              </tr>
              <tr>
                  <td>1.Hindi/Sanskrit</td>
              </tr>
              <tr>
                  <td>2.Economics</td>
              </tr>
              <tr>
                  <td>3.History/Mathematics</td>
              </tr>
              <tr>
                  <td>4.Political Scinece</td>
              </tr>
              <tr>
                  <td>5.Computer Science</td>
              </tr>
              <tr>
                  <td class="auto-style1">6.Philosophy Geography</td>
              </tr>
              </table>
                    
       </div> 
          <br />
                    <div id="bsc">
          <table>
              <thead >
              <tr>
                  <th>Bachelor of Science(B.Sc.)Three Year Programme     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Sc.(Economics)</td>
              </tr>
              <tr>
                  <td>1. English</td>
              </tr>
              <tr>
                  <td>2. General Punjabi/PHC</td>
              </tr>
              <tr>
                  <td>3.Economics</td>
              </tr>
              <tr>
                  <td>4.Quantitative Techniques/Maths</td>
              </tr>
              <tr>
                  <td>5.Computer Application/Computer Science</td>
              </tr>
              <tr>
                  <td style="font-size: large; color: #000000; background-color: #C0C0C0;">B.Sc.(Computer Science)</td>
              </tr>
              <tr>
                  <td>1.English</td>
              </tr>
              <tr>
                  <td>2.General Punjabi/PHC</td>
              </tr>
              <tr>
                  <td>Computer Science</td>
              </tr>
              <tr>
                  <td class="auto-style1">4.Physics or Chemistry</td>
              </tr>
              <tr>
                  <td class="auto-style1">5Maths</td>
              </tr>
              <tr>
                  <td class="auto-style1" style="font-size: large; color: #000000; background-color: #C0C0C0;">B.Sc. (Non Medical)</td>
              </tr>
              <tr>
                  <td class="auto-style1">1. Englishcs</td>
              </tr>
              <tr>
                  <td class="auto-style1">2. General Punjabi</td>
              </tr>
              <tr>
                  <td class="auto-style1">3. Physics</td>
              </tr>
              <tr>
                  <td class="auto-style1">4. Chemistery</td>
              </tr>
              <tr>
                  <td class="auto-style1">5. Mathematics</td>
              </tr>
              <tr>
                  <td class="auto-style1" style="font-size: large; color: #000000; background-color: #C0C0C0;">B.Sc. (Medical)</td>
              </tr>
              <tr>
                  <td class="auto-style1">English</td>
              </tr>
              <tr>
                  <td class="auto-style1">2. General Punjabi</td>
              </tr>
              <tr>
                  <td class="auto-style1">3. Botany</td>
              </tr>
              <tr>
                  <td class="auto-style1">4. Zoology<br />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style1">5. Chemistery</td>
              </tr>
              </table>
                        </div> 
          <br />
                    <div id ="bcom">
                    <table>
              <thead >
              <tr>
                  <th>Bachelor of Commerce(B.Com)-Three Year Programme     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Com. Semester I</td>
              </tr>
              <tr>
                  <td>1. English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/Basic Punjab </td>
              </tr>
              <tr>
                  <td>3.Financial Accounting</td>
              </tr>
              <tr>
                  <td>4.Business Organization</td>
              </tr>
              <tr>
                  <td>5.Business Statistics</td>
              </tr>
              <tr>
                  <td>6.Computer Fundamentals</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">&nbsp;B.Com.&nbsp;Semester II</td>
              </tr>
              <tr>
                  <td>1. English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/Basic Punjab </td>
              </tr>
              <tr>
                  <td>3. Financial Accounting</td>
              </tr>
              <tr>
                  <td>4. Commercial Laws</td>
              </tr>
              <tr>
                  <td>5. Business Economics</td>
              </tr>
              <tr>
                  <td>6. Functional Management</td>
              </tr>
              <tr>
                  <td>7. Seminar</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B. Com. Semseter III</td>
              </tr>
              <tr>
                  <td>1.English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
              </tr>
              <tr>
                  <td>3. Corporate Accounting</td>
              </tr>
              <tr>
                  <td>4. Entrepreneurship &amp; Small Business</td>
              </tr>
              <tr>
                  <td>5.Indian Financial System</td>
              </tr>
              <tr>
                  <td>Business&nbsp; Environment</td>
              </tr>
              <tr>
                  <td>7.Environmental Studies-I</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Com. Semester IV</td>
              </tr>
                        <tr>
                  <td>1.English</td>
                        </tr>
                        <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
                        </tr>
              <tr>
                  <td>3.Cost Accounting</td>
              </tr>
              <tr>
                  <td>4.Industrial laws</td>
              </tr>
              <tr>
                  <td>5.Fundamentals of Banking &amp; Insurance</td>
              </tr>
              <tr>
                  <td>6.Indian Ecomoy</td>
              </tr>
              <tr>
                  <td>7.International Business</td>
              </tr>
              <tr>
                  <td>8.Environmental Studies-II</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Com. Semester V</td>
              </tr>
                        <tr>
                  <td>1.English</td>
                        </tr>
                        <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
                        </tr>
              <tr>
                  <td>3.Indirect Tax Laws</td>
              </tr>
              <tr>
                  <td>4.Management Acccounting</td>
              </tr>
              <tr>
                  <td>5.Operations Research</td>
              </tr>
              <tr>
                  <td class="auto-style2">6.Contemporay Accounting </td>
              </tr>
              <tr>
                  <td>7.Advanced Financial Management</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Com. Semester VI</td>
              </tr>
                        <tr>
                  <td>1.English</td>
                        </tr>
                        <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
                        </tr>
              <tr>
                  <td>3.Auditing</td>
              </tr>
              <tr>
                  <td>4.Direct Tax Laws</td>
              </tr>
              <tr>
                  <td>5.Coporate Goverence </td>
              </tr>
              <tr>
                  <td>6.Portfolio Management</td>
              </tr>
              <tr>
                  <td>7. Financial Services</td>
              </tr>
              </table>
                        </div>
                    <div id="bba"> 
                    <table>
              <thead >
              <tr>
                  <th>Bachelor of&nbsp; Business Administrator(BBA)     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">BBA. Semester I</td>
              </tr>
              <tr>
                  <td>1. English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/Basic Punjab </td>
              </tr>
              <tr>
                  <td>3.Basic Accounting</td>
              </tr>
              <tr>
                  <td>4.Business Organization&amp; Systems</td>
              </tr>
              <tr>
                  <td>5.Managerial Economics-I</td>
              </tr>
              <tr>
                  <td>6.Business Communication</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">&nbsp;BBA.&nbsp;Semester II</td>
              </tr>
              <tr>
                  <td>1. English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/Basic Punjab </td>
              </tr>
              <tr>
                  <td>3. Business Laws</td>
              </tr>
              <tr>
                  <td>4. Principles of Management</td>
              </tr>
              <tr>
                  <td>5. Managerial Economics-II</td>
              </tr>
              <tr>
                  <td>6.Computer Based Accounting System</td>
              </tr>
              <tr>
                  <td>7.Fundamentals of Banking</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">BBA - Semseter III</td>
              </tr>
              <tr>
                  <td>1.English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
              </tr>
              <tr>
                  <td>3. Management Accounting</td>
              </tr>
              <tr>
                  <td>4. Fundamentals of Human Resources Managemwent</td>
              </tr>
              <tr>
                  <td>5.Indian Financial System</td>
              </tr>
              <tr>
                  <td>6. Fundamentals of Marketing Management</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">BBA -&nbsp; Semester IV</td>
              </tr>
                        <tr>
                  <td>1.English</td>
                        </tr>
                        <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
                        </tr>
              <tr>
                  <td>3.Finanacial Management</td>
              </tr>
              <tr>
                  <td>4.Business Environment</td>
              </tr>
              <tr>
                  <td>5.Fundamentals of Insurance</td>
              </tr>
              <tr>
                  <td>6.Environmental Studies</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">BBA -&nbsp; Semester V</td>
              </tr>
                        <tr>
                  <td>1.English</td>
                        </tr>
                        <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
                        </tr>
              <tr>
                  <td>3.Company Laws</td>
              </tr>
              <tr>
                  <td>4.Cost accounting</td>
              </tr>
              <tr>
                  <td>5.Management of Banking Operations</td>
              </tr>
              <tr>
                  <td>6.Insurance and risk Management</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">BBA - Semester VI</td>
              </tr>
                        <tr>
                  <td>1.English</td>
                        </tr>
                        <tr>
                  <td>2. Punjabi/ Basic Punjabi</td>
                        </tr>
              <tr>
                  <td>3. Business Ethics</td>
              </tr>
              <tr>
                  <td>4.Fundamentals of Capital Markets</td>
              </tr>
              <tr>
                  <td>5.Services Marketting</td>
              </tr>
              <tr>
                  <td>6.Viva - Voce</td>
              </tr>
              </table>
                        </div> 
                    <div id="bit">
                  <table>
              <thead >
              <tr>
                  <th>Bachelor of Science in Information Technology     <a href="#links">BACK</a></th>
              </tr>
                  </thead>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Sc. IT - Semester I</td>
              </tr>
              <tr>
                  <td>1.Fundamentals of Computer</td>
              </tr>
              <tr>
                  <td>2. C Programming</td>
              </tr>
              <tr>
                  <td>3.Basic Mathematics and Statistics</td>
              </tr>
              <tr>
                  <td>4. Communication Skills</td>
              </tr>
              <tr>
                  <td>5.Punjabi</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">&nbsp;B.Sc. IT - Semester II</td>
              </tr>
              <tr>
                  <td>1. English</td>
              </tr>
              <tr>
                  <td>2. Punjabi/Basic Punjab </td>
              </tr>
              <tr>
                  <td>3. Principal of Electronics</td>
              </tr>
              <tr>
                  <td>4. C Programming</td>
              </tr>
              <tr>
                  <td>5. Numerical Methods</td>
              </tr>
              <tr>
                  <td>6. Practical - C Programming</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Sc. IT - Semseter III</td>
              </tr>
              <tr>
                  <td>1.Object Oriented Programming using C++</td>
              </tr>
              <tr>
                  <td>2. Data Structure</td>
              </tr>
              <tr>
                  <td>3. System Analysis and Design</td>
              </tr>
              <tr>
                  <td>4. Programming Lab I(C++)</td>
              </tr>
              <tr>
                  <td>5.Programming Lab II(Data Structure)</td>
              </tr>
              <tr>
                  <td>6. Environmental Studies</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Sc. IT -&nbsp; Semester IV</td>
              </tr>
                        <tr>
                  <td>1.Database Management System &amp; Oracle</td>
                        </tr>
                        <tr>
                  <td>2. Internet Applications</td>
                        </tr>
              <tr>
                  <td>3.Java and Web Designing</td>
              </tr>
              <tr>
                  <td>4.Compiler Design</td>
              </tr>
              <tr>
                  <td>5.Programming Lab I (Oracle)</td>
              </tr>
              <tr>
                  <td>6.Programming Lab II(Html &amp; Java)</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Sc. IT -&nbsp; Semester V</td>
              </tr>
                        <tr>
                  <td>1.Computer Networks</td>
                        </tr>
                        <tr>
                  <td>2. Operating System</td>
                        </tr>
              <tr>
                  <td>3.E - Business</td>
              </tr>
              <tr>
                  <td>4. Lab I (Computer Networks)</td>
              </tr>
              <tr>
                  <td>5.Lab II(Operating System)</td>
              </tr>
              <tr>
                  <td style="color: #000000; font-size: large; background-color: #C0C0C0;">B.Sc. IT - Semester VI</td>
              </tr>
                        <tr>
                  <td>1.Computer Graphics</td>
                        </tr>
                        <tr>
                  <td>2.Network Management</td>
                        </tr>
              <tr>
                  <td>3.Project</td>
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

