<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="house.aspx.cs" Inherits="house" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>Academics</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="faculty.aspx"  > Faculty</a> </li>
            <li><a href="house.aspx"  >House Examinations</a></li>
            <li><a href="student_marks.aspx"  >Results</a></li>
          
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        <h1>House Examinations</h1>
       <font color="black">  <ul>
             <li>For all classes there will be two house examinations.</li>
             <li>No student will be exempted from the examination.</li>
             <li>Absence (with or without leave) from an examination wiil be
counted as failure.</li>
             <li> Leave from the house examination will be granted only by the
Principal on medical grounds only.</li>
             <li>Leave on medical grounds must be supported bya certificate —
from the College Medical officer. (Such students will have to
appear in a special test.</li>
             <li> The answer book of a student found guilty of uaing unfair k
means in a particular paper in the house examination reported by the Supdtt. to the Controller of Examinations
shall not be assessed. The student will be deemed to have obtained no marks in that paper.</li>
         </ul></font> 
        
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

