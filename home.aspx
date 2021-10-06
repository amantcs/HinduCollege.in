<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="jquery-2.1.3.min.js"></script>
    <script src="mainnav.js"></script>
   
          <script type ="text/javascript"  >
              $(function () {
                  $('a').bind('click', function (event) {
                      var $anchor = $(this);
                      $('html,body').stop().animate({
                          scrollTop: $($anchor.attr('href')).offset().top
                      }, 2000);
                      event.preventDefault();
                  });
              });
    </script>
   
   
<title>Hindu College Amritsar</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link href="layout/styles/layout.css" rel="stylesheet" />
    <link href="engine1/style.css" rel="stylesheet" />
    
</head>
<body id="top">
   
    <!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->

<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0" style="display:inline; float:right; margin-right:189px;">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
     
    <nav>
      <ul>
        <li><a href="home.aspx" >Home</a></li>
        <li><a id="contact" href="#footer">Contact Us</a></li>
        <li><a href="admin_login.aspx">Admin</a></li>
          
            <li><a href="student_login.aspx" > Login</a> </li>
          
        <li><a href="st_signup.aspx" > Sign Up</a></li>
         
      </ul>
    </nav>
          
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1" style="">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left" style="margin-top:-40px; height:88px;">
      
        <img src="images1/1.png"style=" height :111%; vertical-align:text-bottom; width:24%; float:left; "/>
        <!--  <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>-->&nbsp;&nbsp;
     <h1 style="width:500px;"><a href="home.aspx" style="">Hindu College</a><br /><br /><span  style="font-size:large">(NAAC Accredited)</span></h1>
       &nbsp;&nbsp;&nbsp;&nbsp; 
    </div>    
       <div class="fl_right">
           <asp:Panel ID="Panel1" runat="server">
     <form  runat ="server" class ="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend> 
          <input id="idtext" runat ="server"  type="text" value="" placeholder="Search Here" style ="height :30px"/>
          <button id="Button1" runat ="server" onserverclick ="Button1_Click" class="fa fa-search" type="submit" title="Search" style="height :30px"><em>Search</em></button>
        </fieldset>
     </form>
               </asp:Panel>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" > 
      <!-- ################################################################################################ -->
      <ul class="ulMenu">
        <li class="active"><a href="home.aspx">Home</a></li>
        <li><a href="#">Academic</a>
          <ul>
            <li><a class="drop"  href="faculty.aspx" >Faculty</a>
                <ul>
                    <li><a href="teaching.aspx" >Teaching Staff</a></li>
                    <li><a href="nonteaching.aspx" >Non-Teaching Staff</a></li>
                </ul>
            </li>
            
            <li><a href="house.aspx" >House Examination</a></li>
            <li><a href="student_marks.aspx" >Results</a></li>
            
          </ul>
        </li>
        <li><a href="#">Downloads</a>
          <ul>
            <li><a href="notes/dwr730.pdf">Prospectus</a></li>
            <li><a href="notes/dwr730.pdf">Datesheet</a></li>
            <li><a href="notes/dwr730.pdf">Marksheet</a></li>
             
          </ul>
        </li>
        <li>
            <a href="#">Admission</a>
          <ul>
               <li><a href="ad_rules.aspx" >Rules</a></li>
               <li><a href="ad_schedule.aspx"  >Schedule</a></li>
               <li><a class ="drop"  href="fee.aspx" >Fee Structure</a>
                    <ul>
                       <li><a href="fee.aspx" >Annual Charges</a></li>
                       <li><a href="fee.aspx" >University Charges</a></li>
                       <li><a href="fee.aspx" >Monthly charges</a></li>
                         <li><a href="#">Fee Concession</a></li>
                   </ul>
               </li>
               <li><a href="scholar.aspx">Scholarships</a></li>
               <li><a href="Admission.aspx" >Apply Online</a></li>
          </ul> 
        </li> 
        <li>
            <a href="#">Courses</a>
            <ul >
                 <li><a href="ug.aspx">Under-Graduate Courses</a></li> 
                <li><a href="pg.aspx" >Post-Graduate Courses</a></li>
                 <li><a href="diploma.aspx" >Diploma Courses</a></li>
                 <li><a href="eligibility_condition.aspx" >Eligibility Conditions</a></li>
                
                 

            </ul>
        </li>
        <li><a href="#">Facilities</a>
            <ul>
                 <li><a href="Special_aid.aspx" >Special Aids</a></li>
                 <li><a href="med_aid.aspx" >Medical Aid</a></li>
                 <li><a href="library.aspx" >Library</a></li>
                 
            </ul>
        </li>
        <li>
            <a href="#">Activities</a>
            <ul>
                 <li><a href="ncc.aspx" >NCC & NSS</a></li>
                 <li><a href="sports.aspx">Sports</a></li>
                 <li><a href="#">Youth Festival</a></li>
                 <li><a href="gallery.aspx" >Gallary</a></li>
            </ul>

        </li>
        <li >
            <a href ="#">About Us</a>
            <ul>
                 <li><a href="clgProfile.aspx" >College Profile</a></li>
                 <li><a href="vision_mission.aspx" >Vision & Mission</a></li>
                 <li><a class ="drop"  href="messages.aspx" >Messages</a>
                     <ul>
                         <li><a href="messages.aspx#pm"  >Dr. Manmohan Singh</a></li>
                         <li><a href="messages.aspx#ch"  >Chairman</a></li>
                         <li><a href="messages.aspx#p"  >Principal</a></li>
                     </ul>
                 </li>
                 <li><a href="gen_rules.aspx" >General Rules</a></li>
                 <li><a href="rag_rules.aspx" >Rules For Ragging</a></li>
                 <li><a href="merit.aspx" >Our Stars</a></li>
            </ul>

        </li>
      </ul>

         <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper">
  <div id="slider">
    <div id="slide-wrapper" class="rounded clear"> 
        <div id="wowslider-container1">
	<div class="ws_images"><ul>
        <li><img src="data1/images/img_20141224_135505.jpg" alt="IMG_20141224_135505" title="Hindu College" id="Img1"/></li>
		
		<li><img src="data1/images/dsc00100.jpg" alt="DSC00100" title="Commerce Department" id="wows1_1"/></li>
		<li><img src="data1/images/dsc00120.jpg" alt="DSC00120" title="College Students in Youth Festival" id="wows1_2"/></li>
		<li><img src="data1/images/dsc00156.jpg" alt="DSC00156" title="Seminar at The College" id="wows1_3"/></li>
		<li><img src="data1/images/dsc02654.jpg" alt="DSC02654" title="Air View" id="wows1_4"/></li>
		<li><img src="data1/images/dsc04365.jpg" alt="DSC04365" title="Inaugration of New Session" id="wows1_5"/></li>
		<li><img src="data1/images/dsc_0307.jpg" alt="DSC_0307" title="Bhaangra Performance in Tech Fizz 2014" id="wows1_6"/></li>
		<li><img src="data1/images/dsc_0359.jpg" alt="DSC_0359" title="Gidha Performance in Tech Fizz 2014" id="wows1_7"/></li>
		
        <li><a href="http://wowslider.com/vf"><img src="data1/images/img_20141224_134719.jpg" alt="full screen slider" title="College Garden" id="wows1_8"/></a></li>
		
	</ul></div>
<span class="wsl"><a href="http://wowslider.com/vu">image carousel</a> by WOWSlider.com v7.3</span>
	<div class="ws_shadow"></div>
	</div>	

      <!-- ################################################################################################ -->
    <!--  <figure id="slide-1"><a class="view" href="#"><img src="images/demo/slider/1.png" alt=""></a>
        <figcaption>
          <h2>Nullamlacus dui ipsum</h2>
          <p>Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
      <figure id="slide-2"><a class="view" href="#"><img src="images/demo/slider/2.png" alt=""></a>
        <figcaption>
          <h2>Aliquatjusto quisque nam</h2>
          <p>Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
      <figure id="slide-3"><a class="view" href="#"><img src="images/demo/slider/3.png" alt=""></a>
        <figcaption>
          <h2>Aliquatjusto quisque nam</h2>
          <p>Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
      <figure id="slide-4"><a class="view" href="#"><img src="images/demo/slider/4.png" alt=""></a>
        <figcaption>
          <h2>Aliquatjusto quisque nam</h2>
          <p>Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>
      <figure id="slide-5"><a class="view" href="#"><img src="images/demo/slider/5.png" alt=""></a>
        <figcaption>
          <h2>Dapiensociis temper donec</h2>
          <p>Attincidunt vel nam a maurisus lacinia consectetus magnisl sed ac morbi. Inmaurisus habitur pretium eu et ac vest penatibus id lacus parturpis.</p>
          <p class="right"><a href="#">Continue Reading &raquo;</a></p>
        </figcaption>
      </figure>-->
      <!-- ################################################################################################ -->
      <ul id="slide-tabs">
        <li><a href="clgProfile.aspx" >All About The University</a></li>
        <li><a href="#slide-2">Why You Should Study With Us</a></li>
        <li><a href="#slide-3">Education And Student Experience</a></li>
        <li><a href="#slide-4">Alumni And Its Donors</a></li>
        <li><a href="#slide-5">Latest University News &amp; Events</a></li>
      </ul>
      <!-- ################################################################################################ --> 
    </div>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30"> 
        <!-- Left Column -->
        <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li class="btmspace-15"><a href="star_sport.aspx" ><em class="heading">Prospective Students</em> <img class="borderedbox" src="images1/asr2.jpg" alt=""></a></li>
            <li class="btmspace-15"><a href="merit.aspx"><em class="heading">Meritorious Students</em> <img class="borderedbox" src="images1/merit.jpg" alt=""></a></li>
            <li class="btmspace-15"><a href="stars_place.aspx" ><em class="heading">Placements</em> <img class="borderedbox" src="images/Untitled-1%20copy.jpg" alt=""></a></li>
            <li><a href="alumni.aspx" ><em class="heading">Alumni</em> <img class="borderedbox" src="images1/man1.jpg" alt=""></a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Left Column --> 
        <!-- Middle Column -->
        <div class="one_half"> 
          <!-- ################################################################################################ -->
          <h2>Latest News &amp; Events</h2>
          <ul class="nospace listing">
            <li class="clear">
              <div class="imgl borderedbox"><img src="images1/asr2.jpg" alt=""></div>
              <p class="nospace btmspace-15"><a href="#">56th Convocation Ceremony</a></p>
              <p>56th Convovation Ceremony organized on 21st February 2014 in the College primises.</p>
            </li>
            <li class="clear">
              <div class="imgl borderedbox"><img src="images1/dsc_0037.jpg" alt=""></div>
              <p class="nospace btmspace-15"><a href="#">Techi - Fizz 2014</a></p>
              <p>Techi - Fizz 2014 celebrated on 8th February. <a href ="Gallery1.aspx" > Click here</a> for Gallery</p>
            </li>
            <li class="clear">
              <div class="imgl borderedbox"><img src="images1/lala%20lajpat%20rai.png" alt=""></div>
              <p class="nospace btmspace-15"><a href="lala.aspx" >Lala Lajpat Rai Study Center</a></p>
              <p>In Hindu College the UGC has established a Lala Lajpat Rai studies centre.Presently it is the only centre in India,working on the ideas and thoughts of Lala Lajpat Rai under the scheme of Epoch Marking Social Thinkers of India.</p>
            </li>
          </ul>
          <p class="right"><a href="#">Click here to view all of the latest news and events &raquo;</a></p>
            
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Middle Column --> 
        <!-- Right Column -->
        <div class="one_quarter sidebar"> 
          <!-- ################################################################################################ -->
          <div class="sdb_holder">
            <marquee id="scroll" direction="up" style="font-family:Book Antiqua; color:#FFFFFF"  scrolldelay="180">
<div onMouseOver="document.getElementById('scroll').stop();" onMouseOut="document.getElementById('scroll').start();"> 
<ul>
    
    <li><a href ="#">Celebration 2015 is coming on 28th Feb.</a></li>
    <li><a href ="#">Last Date for Submitting Admission Form is 17 Feb.</a></li>
    <li><a href ="#">Tech Fizz 2014 Gallary</a></li>
    <li><a href ="#">News Number 4</a></li>
    <li><a href ="#">News Number 5</a></li>
</ul>
</div></marquee>
          </div>
          <div class="sdb_holder">
            <h6>Quick Informationion</h6>
            <ul class="nospace quickinfo">
              <li class="clear"><a href="notes/dwr730.pdf"><img src="images1/1.png" alt=""> Download Prospectus</a></li>
              <li class="clear"><a href="#footer"><img src="images1/phone.png" alt=""> Reach Us</a></li>
            </ul>
          </div>
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Right Column --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="twitter" class="group btmspace-30">
        <div class="one_quarter first center"><a href="#"><i class="fa fa-twitter fa-3x"></i><br>
          Follow Us On Facebook</a></div>
        <div class="three_quarter bold">
          <p>Inteligula congue id elis donec sce sagittis intes id laoreet aenean. Massawisi condisse leo sem ac tincidunt nibh quis dui fauctor et donecnibh elis velit <a href="#">@name</a> - 10:15 AM yesterday</p>
        </div>
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
    <div class="group">
        <h2>Quickly Find What You Are Looking For</h2>
        <div class="one_quarter first"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li><a href="ad_schedule.aspx" >Academic Schedule</a></li>
            <li><a href="ad_rules.aspx" >Admission Rules</a></li>
            <li><a href="#">Academic Calendars</a></li>
            <li><a href="nonteaching.aspx" >Academics Office</a></li>
            <li><a href="admin_login.aspx" >Administration</a></li>
            <li><a href="clgProfile.aspx" >College Profile</a></li>
            <li><a href="diploma.aspx" >Diploma</a></li>
            <li><a href="download_notes.aspx" >Notes</a></li>
            <li><a href="eligibility_condition.aspx" >Eligibility</a></li>
            <li><a href="faculty.aspx" >Faculty</a></li>
            <li><a href="fee.aspx" >Fee Structure</a></li>
            <li><a href="fee.aspx#mon" >Monthly Charges</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li><a href="gallery.aspx" >Gallery</a></li>
            <li><a href="gen_rules.aspx" >College Rules</a></li>
            <li><a href="ug.aspx" >Course Descriptions &amp; Catalogue</a></li>
            <li><a href="teaching.aspx" >Department Directory</a></li>
            <li><a href="library.aspx" >Library</a></li>
            <li><a href="house.aspx" >House Examinations</a></li>
            <li><a href="messages.aspx#pm" >Message from Manmohan Singh</a></li>
            <li><a href="Special_aid.aspx" >Financial Aid</a></li>
            <li><a href="ncc.aspx" >Fitness and Recreation Facilities</a></li>
            <li><a href="sports.aspx" >Global Learning</a></li>
            <li><a href="ug.aspx" >Graduate</a></li>
            <li><a href="messages.aspx#p" >Message from Principal</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li><a href="scholar.aspx" >Scholarships</a></li>
            <li><a href="ug.aspx" >Graduate Housing</a></li>
            <li><a href="pg.aspx" >Post-Graduate Programs</a></li>
            <li><a href="Special_aid.aspx" >Post Metric Scheme</a></li>
            <li><a href="myprofile.aspx" >Student Profile</a></li>
            <li><a href="myprofiletea.aspx" >Teacher Profile</a></li>
            <li><a href="vision_mission.aspx" >Our Vision and Mission</a></li>
            <li><a href="youth.aspx" >Youth Festival</a></li>
            <li><a href="star_sport.aspx" >Perspective Students</a></li>
            <li><a href="sports.aspx" >Intramural Sports</a></li>
            <li><a href="#">Language Resources</a></li>
            <li><a href="FindUs.aspx" >Maps and Directions</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <div class="one_quarter"> 
          <!-- ################################################################################################ -->
          <ul class="nospace">
            <li><a href="nonteaching.aspx" >Office of the Registrar</a></li>
            <li><a href="Admission.aspx" >Acquire Online</a></li>
            <li><a href="fee.aspx" >Fee Structure</a></li>
            <li><a href="admin_home.aspx" >Admin Panel</a></li>
            <li><a href="#">Residential Colleges</a></li>
            <li><a href="#">Schools and Colleges</a></li>
            <li><a href="#">Student Activities</a></li>
            <li><a href="#">Student Affairs</a></li>
            <li><a href="#">Student Development</a></li>
            <li><a href="#">Student Financial Services</a></li>
            <li><a href="#">Student Group Directory</a></li>
            <li><a href="#">Student Life</a></li>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [links]" OnSelecting="SqlDataSource1_Selecting">
            </asp:SqlDataSource>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ -->
      <div class="one_third first">
        <figure class="center"><img class="btmspace-15" src="images/demo/worldmap.png" alt="">
          <figcaption><a href="#">Find Us With Google Maps &raquo;</a></figcaption>
        </figure>
      </div>
      <div class="one_third">
       <address>
        Hindu College<br />
        Dhab Khatikan<br>
        Amritsar<br>
        143001<br>
        <br>
        <i class="fa fa-phone pright-10"></i> 0183-2563788<br/>
        <i class="fa fa-envelope-o pright-10"></i> <a href="#">contact@hinducollege.in</a>
        </address>
      </div>
      <div class="one_third">
        <p class="nospace btmspace-10">Stay Up to Date With What's Happening</p>
        <ul class="faico clear">
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-flickr" href="#"><i class="fa fa-flickr"></i></a></li>
          <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
         
        <form id="Form1" class="clear" method="post" action="#">
          <fieldset>
            <legend>Subscribe To Our Newsletter:</legend>
            <input type="text" value="" placeholder="Enter Email Here&hellip;"/>
            <button class="fa fa-sign-in" type="submit" title="Sign Up" ><em>Sign Up</em></button>
          </fieldset>
       </form>
            
      </div>
      <!-- ################################################################################################ --> 
    </footer>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
   
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.fitvids.min.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script> 
<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>
   
    
</body>
</html>
