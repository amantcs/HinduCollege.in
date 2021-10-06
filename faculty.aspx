<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="faculty.aspx.cs" Inherits="faculty" %>

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
        <h1>Choose An Option:</h1>
         <ul>
             <li><a href="teaching.aspx"  >Teaching Staff</a></li>
              <li><a href="nonteaching.aspx"  >Non Teaching Staff</a></li>
             
         </ul>
        
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 


</asp:Content>

