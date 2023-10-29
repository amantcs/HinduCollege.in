<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="lab.aspx.cs" Inherits="lab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="engine1l/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <div class="sidebar one_third first" > 
        <!-- ################################################################################################ -->
       <h6>Our Stars</h6>
        <nav class="sdb_holder">
         <ul>
            <li><a href="gallery.aspx" >Tech Fizz 2014</a></li>
            <li><a href="gal_2009.aspx" >Tech Fizz 2010</a></li>
            <li><a href="lab.aspx" n>Lab Pics</a> </li>
           
          </ul>

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"  > 
        <!-- ################################################################################################ -->
        <h1>Our Placements:</h1>
          <div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="data1l/images/dsc02927.jpg" alt="DSC02927" title="DSC02927" id="wows1_0"/></li>
	</ul></div>
	<div class="ws_thumbs">
<div>
		<a href="data1l/images/dsc02927.jpg" title="DSC02927"><img src="data1l/tooltips/dsc02927.jpg" alt="" /></a>
		<a href="data1l/images/dsc02928.jpg" title="DSC02928"><img src="data1l/tooltips/dsc02928.jpg" alt="" /></a>
		<a href="data1l/images/dsc02929.jpg" title="DSC02929"><img src="data1l/tooltips/dsc02929.jpg" alt="" /></a>
		<a href="data1l/images/dsc02930.jpg" title="DSC02930"><img src="data1l/tooltips/dsc02930.jpg" alt="" /></a>
		<a href="data1l/images/dsc02931.jpg" title="DSC02931"><img src="data1l/tooltips/dsc02931.jpg" alt="" /></a>
		<a href="data1l/images/dsc02932.jpg" title="DSC02932"><img src="data1l/tooltips/dsc02932.jpg" alt="" /></a>
		<a href="data1l/images/dsc02933.jpg" title="DSC02933"><img src="data1l/tooltips/dsc02933.jpg" alt="" /></a>
		<a href="data1l/images/dsc02934.jpg" title="DSC02934"><img src="data1l/tooltips/dsc02934.jpg" alt="" /></a>
		<a href="data1l/images/dsc02935.jpg" title="DSC02935"><img src="data1l/tooltips/dsc02935.jpg" alt="" /></a>
		<a href="data1l/images/dsc02936.jpg" title="full screen slider"><img src="data1l/tooltips/dsc02936.jpg" alt="" /></a>
		<a href="data1l/images/dsc02937.jpg" title="DSC02937"><img src="data1l/tooltips/dsc02937.jpg" alt="" /></a>
	</div>
</div>
<span class="wsl"><a href="http://wowslider.com/vu">image carousel</a> by WOWSlider.com v7.3</span>
	<div class="ws_shadow"></div>
	</div>	
        
<script type="text/javascript" src="engine1l/jquery.js"></script>
          <script type="text/javascript" src="engine1l/wowslider.js"></script>
	<script type="text/javascript" src="engine1l/script.js"></script>
       	

        <!-- ################################################################################################ --> 
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div>
</asp:Content>

