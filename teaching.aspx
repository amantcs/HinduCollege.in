<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="teaching.aspx.cs" Inherits="teaching" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="jquery-2.1.3.min.js"></script>
    <script src="faculty.js"></script>

      <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first"> 
        <!-- ################################################################################################ -->
       <h6>Academics</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="faculty.aspx" > Faculty</a> </li>
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
        <h1>Teaching Staff</h1><font color="black">
             
         <ol>
             <li><a id="b" href="#">P.G. Department of Computer Science</a>
                 <ul id="java1" style ="display :none ">
                     <li>Mrs. Rama Sharma, M.I.T., M.Tech,M.A.</li>
                     <li>Mr. Rajesh Anand, MCA.</li>
                     <li>Mr. Anshuman Sharma, B.Tech., M.Tech.</li>
                     <li>Mr. Abhinav Gupta, B.Tech.</li>
                     <li>Mr. Gaurav Kumar, MCA.</li>
                     <li>Mr.Sanjeev saini MCA.</li>
                 </ul>
             </li>
             <li><a id="A1" href ="#">P.G. Department of Commerce and Business Management</a> 
                 <ul id="u2" style ="display :none ">
                     <li>Mrs. Renu Sareen, M.Com.</li>
                     <li>Dr. Sanjeev Sharma, M.Com., M.Phil.,Ph.D.,FICWA.</li>
                     <li>Dr. Monika Sharma, MBA., N.E.T. Ph.D.</li>

                 </ul>
             </li>
             <li><a id="A2" href="#">P.G. Department of Mathematics</a> 
                 <ul id="u3" style ="display :none ">
                     <li>Dr. P.K. Sharma, M.Sc., M.Phil.,Ph.D</li>
                     <li>Mr. Sanjay Khanna, M.Sc.(Gold Medalist), M.Phil.</li>
                     <li>Mr. Neeraj Doda, M.Sc., N.E.T.</li>
                 </ul>
             </li>
             
             <li><a id="A3" href="#">P.G. Department of Economics</a> 
                 <ul id="u4" style ="display :none ">
                     <li>Mrs. Anju Sahni, M.A., M.Phil.</li>
                     <li>Mrs. Anshu Gupta, M.A., M.Phil.</li>
                     <li><a href="Apply.aspx?dept=economics" >Vacant(2)</a></li>
                 </ul>
             </li>
             
             <li><a id="A4" href="#">P. G. Department of English</a> 
                 <ul id="u5" style ="display :none ">
                     <li>Mr. Suresh Mahajan, M.A., M.Phil.</li>
                     <li>Mr. Gurpartap Singh,&nbsp; M.A., N.E.T.</li>
                 </ul>
             </li>
             
             <li><a id="A5" href="#">P. G. Department of Punjabi</a> 
                 <ul id="u6" style ="display :none ">
                     <li>Mr. Narinderjit Singh Sandhu, M.A., M.Phil.</li>
                     <li>Mrs. Navdeep Kaur, M.A., M.Phil., N.E.T.</li>
                     <li><a href="Apply.aspx?dept=punjabi" >Vacant</a></li>
                 </ul>
             </li>
             
             <li><a id="A6" href="#">P. G. Department of Hindi</a> 
                 <ul id="u7" style ="display :none ">
                     <li><a href="Apply.aspx?dept=hindi">Vacant</a> </li>
                     <li><a href="Apply.aspx?dept=hindi">vacant</a> </li>
                 </ul>
             </li>
             
             <li><a id="A7" href="#">P. G. Department of Political Science</a> 
                 <ul id="u8" style ="display :none ">
                     <li>Dr. Arun Mehra, M.A., M.Phil., Ph.D.</li>
                    
                 </ul>
             </li>
             
             <li><a id="A8" href="#">P. G. Department of History</a> &nbsp;&nbsp;&nbsp;
                 <ul id="u9" style ="display :none ">
                     <li>Dr. J.P. Singh Dhaliwal, M.A., N.E.T., Ph.D.</li>
                     <li><a href="Apply.aspx?dept=history">Vacant</a> </li>
                 </ul>
             </li>
             <li><a id="A9" href="#">P. G. Department of Geography &amp; Tourism</a> 
                 <ul id="u10" style ="display :none ">
                 <li>Dr. Abhishek Aggarwal, M.Sc. (Gold Medalist).</li>
                 <li><a href="Apply.aspx?geography and tourism">Vacant</a> </li>
                 </ul>
             </li>
             <li><a id="A10" href="#">P. G. Department of Physics &amp; Electronics</a> 
                 <ul id="u11" style ="display :none ">
                 <li>Mrs. Bela Bhatia, M.Sc. M.Phil.</li>
                 <li>Dr. vijay Kumar, M.Sc., Ph.D.</li>
                 <li><a href="Apply.aspx" >Vacant</a> </li>
                 </ul>
             </li>
             <li><a id="A11" href="#">P. G. Department of Chemistery</a> 
                 <ul id="u12" style ="display :none ">
                 <li>Dr. Keshav Chander, M.Sc. (Hons). Ph.D.</li>
                 <li><a href="Apply.aspx" >Vacant(3)</a> </li>
                 </ul>
             </li>
             <li><a id="A12" href="#">P. G. Department of Biology &amp; Environmental sciences</a> 
                 <ul id="u13" style ="display :none ">
                 <li>Dr. rakesh Joshi, M.Sc., M.Phil., Ph.D.</li>
                 <li>Dr. Sham Sunder Sharma, M.Sc., M.Phil.</li>
                 </ul>
             </li>
             <li><a id="A13" href="#">P. G. Librarian</a> 
                 <ul id="u14" style ="display :none ">
                 <li>Miss Anju Mahajan, M.A., M.Lib. Sc.</li>
                 </ul>
             </li>
             
         </ol>
           
          
         
          </font>
       
       
          
         
          
        <!-- ################################################################################################ --> 
      </div>
       
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 
</asp:Content>

