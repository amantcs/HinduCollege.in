<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="star_sport.aspx.cs" Inherits="star_sport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            <li><a href="merit.aspx" > Academic</a> </li>
            <li><a href="star_sport.aspx" >Sports</a></li>
            <li><a href="stars_place.aspx"  >Placements</a></li>
            

        
        </nav>
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      <div id="content" class="two_third"  > 
        <!-- ################################################################################################ -->
        <h1> SPORTS &amp; C.C.A. PERSONALITIES</h1>
          <p> 
              <asp:Image ID="Image1" runat="server" ImageUrl="~/images1/sport1.png" Width="539px" />
          </p>
       	

        <!-- ################################################################################################ --> 
          <asp:Image ID="Image2" runat="server" ImageUrl="~/images1/sport2.png" Width="539px" />
         <br />
      </div>
          <div class="clear"></div>
        </main> 
      </div> 
        </div> 

</asp:Content>

