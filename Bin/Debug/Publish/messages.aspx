<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="messages" %>

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
       <h6>Admissions</h6>
        <nav class="sdb_holder">
          <ul>
            <li><a href="clgProfile.aspx" > College Profile</a> </li>
            <li><a href="vision_mission.aspx" >Vision & Mission</a></li>
            <li><a href="messages.aspx" >Messages</a></li>
            <li><a href="gen_rules.aspx" >General Rules</a></li>
           <li><a href="rag_rules.aspx" >Rules for Ragging</a> </li>
                <li><a href="stars_place.aspx" >Our Stars</a> </li>
              
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"> 
        <!-- ################################################################################################ -->
        <h1>Choose An Option:</h1>
          <div id="links">
         <ul>
             <li><a href="#pm">Message From Manmohan Singh</a></li>
              <li><a href="#ch" >Message From Chairman</a></li>
              <li><a href="#p" >Message From Principal</a></li>
         </ul>
              </div> 
           <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
           <br />
             <br />
             <br />
             <br />
             <br />
             <br />
        <div id="pm">
             
            
             
             <h1>Dr. Manmohan Singh:</h1>
        <img class="imgr borderedbox" src="images1/man1.jpg" alt="">
        <p > <font color="black" >I am delighted to learn that my college, Hindu College, Amritsar, has honoured me by inducting me as the first member of the College Alumni Association.</font></p> 
         
           
          <p><font color="black">I have fond memories of my life at Hindu College. I have often said that i am what i am today because of the investment my family and well wishers had made in my education. What i learnt at Hindu College has remained with me through life. I sincerely hope generations of students will similarly benefit from their asscociation with the college.</font></p>
          <p>
              <font color="black">I sent my best wishes to the staff, students and alumni of Hindu College</font>
          </p>
            <a href="#ch">Message from Chairman</a>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dr. Manmohan Singh<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex. Prime Minister of India</p>

        </div>
           <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
           <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
          <div id="ch">
               <h1>Message from the Chairman...:</h1>
        <img class="imgr borderedbox" src="images1/chairman.jpg" alt="">
        <p > <font color="black" >It gives me immense pride and pleasure to welcome the studets from all streams, schools and colleges to our colleges. Since 1924, Hindu College has stood committed to produce students who grow up into pre-eminent personalities like Dr. Manmohan Singh,the hon'ble Prime Minister of our country.</font></p> 
         
           
          <p><font color="black">We understand that the global scenario of education is marked by high levels of intellect,competition, hard work and values. We prepare our students to be socially aware, economically indepedent, technically sound and intellectually vibrant global citizens and this, we realie, is the need of the hour. It fills me with a sense of deep satisfaction that the students educated at our college have never been laggers but, on the other hand, they are indomitable winners in all aspects of their careers and personalities.</font></p>
          <p>
              <font color="black">I welcome you to join the College and become a part of the amazing legacy of Hindu College Amritsar. </font>
          </p>
              <a href="#p">Message from Principal</a>
          </div>
           <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
           <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
          <div id="p">
               <h1>Message from the Principal...:</h1>
        <img class="imgr borderedbox" src="images1/pk.png" alt="">
        <p > &nbsp;<font color="black" >Dear Students..<br />In this era of Globalization, all concepts and definations have undergone a metamorphosis. Meaning have changed and so have perspectives. Sarte's observation that tradition isn't what it used to be is more true today than it ever was . Language, the very basis of communication, too is now richer, more complex and down to earth.In such a complex scenario, all the five senses have to be alert and grasping at all times. A casual attitude will not do at all. We ,at Hindu College, keep ourselves abreast of all the changes taking place around us and evolve ourselves accordingly so that nothing is constant except change. It is eveyone's endeavour to keep the students in touch with grou nd realities and to prepare them for all the challenges that life can bring. They are thus exhorted to participate enthusiastically not only in studies but in personality enhancing activities like sports and other cultural events.</font></p>
         
           
          <p><font color="black">All that is expected of you is to devote yourselves heartedly to your education and we will provide whatver it takes, and the whole world will be yours! And this is something that shall never change.</font></p>

          </div>
          <a href="#links">BACK</a>
        <!-- ################################################################################################ --> 
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

