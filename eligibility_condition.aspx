<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="eligibility_condition.aspx.cs" Inherits="eligibility_condition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
          <ul>
              <li><a href="#ug">Eligibility Conditions for Under Graduate Classes</a></li>
              <li><a href="#pg">Eligibility Conditions for Post Graduate Classes</a></li> 
          </ul>
           </div>
          <div id="ug">
          <h1>Eligibility Conditions for Under Graduate Classes       <a href="#links">BACK</a></h1>
          <p>B.A./B.S.c.(Medical,Non-Medical,Economics,I.T.,Computer Science)/B.Com./B.Com(Prof.)/BBA/Bachelor of Multimedia - Semester-I.
Only those students shall be eligible for admission to B.A./B.Sc.(Eco.)/BCA/B.Sc.(IT)/BBa Semester -I Class who have passed:&nbsp;</p>
          <ol>
              <li>Senior Secondary Certificate Part II Examination of the Punjab School Education Board with minimum of 40% marks except for B.A.  OR</li>
              <li>Part I Examination of the B.A./B.Sc./B.Com./B.Sc.(Agri.)Examination(Old System)of Guru Nanak Dev University;                                OR </li>
          <li>Any other Examination recognised  equivalent to the aforesaid examination of this University, if he/she fulfils other conditions such as combination of subjects and/or minimum percentage of marks required for that examination.</li>
          </ol>
           <h1>Notes:</h1>
          <p>A candidate for B.A/B.Sc. Sem I Examination shall not opt for Physics, Chemistry, Maths, Botany, Zoology unless he/she has qualified in the  same subject in the qualifying examination.A candidate for B.A/B.Sc. Sem. I Examination offering Maths, Physics, Chemistry,Botany, Zoology without having qualified it at the qualifying examination may be allowed to qualify it in that/those subject  (s) of lower examination at the supplementary Examination held in Sept . of the year of adimmsion.</p>
          </div><br />
          <div id="pg">
              <h1>Eligibility Conditions for Post Graduate Classes      <a href="#links">BACK</a></h1>
              <ol>
                  <li>Students joining M.Sc.(Computer Science)must be graduate with Computer Sciesnce/ Computer Application as one of the elective subjects with 50% marks in aggregate </li>
                   <li>Student joining M.Sc.(maths) must have obtained 50% marks in aggregate of B.A./B.Sc. or have passed Maths at B.A/B.Sc.level with 45% marks or  M.A. IN any subject or B.A. with Honours in Maths.</li>
                  <li>Students joining M.A.(Economics) must have obtained 45% marks in Economics at a level  or must have obtained 45% marks in Economics at graduation level or must have obtained 45% marks in economics at graduation level oe must have obtained 50% marks in aggregate level having economics as one of the subjects.  </li>
                  <li>The optional group accounting & finance is taught in the college. </li>
                      <li>Those joining M.Com must have passed B.Com(R) with at least 50% marks.</li>

                 
              </ol>
          </div>
          
                <div class="scrollable">
                   
      
          
                   </div> 
       
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div>
</asp:Content>

