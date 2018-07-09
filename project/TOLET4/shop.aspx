<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="TOLET4.shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>To_Let.com</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="CustomStyles.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
   
       <!-- HEADER START -->
    <div class="row">
       <div class="col-lg-12">
          <div class="customDiv">
 
               <!--LOGO START-->
               <div class="logo">
                   <h1><a href="mainPage.aspx"><strong>To</strong>_Let</a></h1>
               </div>
               <!--LOGO END-->
 
 
               <!-- SIGN IN and SIGN OUT button on every page start-->    
                <div style="position:absolute; right:30px; top:10px;">
                    <button type="button" class="btn btn-primary disabled">Sign In</button> 
                   <a href="coverPage.aspx" class="btn btn-primary active">Sign Out</a>                
                </div>
              <!-- SIGN IN and SIGN OUT button on every page end-->    
 
            <!-- Navigation bar start-->
                <div class="shiftright"> 
                    <a href="mainPage.aspx" class="btn btn-danger"><span class="glyphicon glyphicon-home"></span>&nbsp&nbsp Home </a>
                    <a href="aboutUs.aspx" class="btn btn-danger"><span class="glyphicon glyphicon-user"></span>&nbsp&nbsp About Us</a>
                    <% if ( Session["typ"] != null && Session["typ"].ToString() == "user" )
                        {
                            %>
                                <a href="contactUs.aspx" class="btn btn-danger" ><span class="glyphicon glyphicon-headphones"></span>&nbsp&nbsp Contact Us</a>
                            <%
                        }
                    %>
                    <a href="termsConditions.aspx" class="btn btn-danger"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp&nbsp Terms and Conditions</a>                              
              </div>  
               <!-- Navigation bar end-->
 
          </div>
       </div>         
    </div>
    <!-- HEADER end-->


    <form id="form1" runat="server">
    <!--CONTAINER class start-->
    <div class="container">    
	
        <div class="row">
        
           <!--CATEGORY header start-->
           <h1 class="page-header">Categories 

                <!-- ADMIN DROPDOWN button start-->
                <%if (Session["typ"] != null && Session["typ"].ToString() == "admin")
                   {
                       %>
                            <div class="btn-group" style="float:right;">
                                <button type="button"  class="btn btn-warning btn-lg active dropdown-toggle active"  data-toggle="dropdown">
                                Admin Panel <span class="caret"></span></button>
                                <ul class="dropdown-menu"  role="menu">
                                  <li><a href="allUser.aspx">All Users</a></li>
                                  <li><a href="deletePost.aspx">Delete Post</a></li>
                                  <li><a href="viewContactus.aspx">View Contact us</a></li>
                                  <li><a href="pendingPost.aspx">Pending Posts</a></li>
                                </ul>
                            </div>
                       <%
                   }
               %>
               <!-- DROPDOWN ADMIN button end-->
            
               <!-- DROPDOWN ADD POST button start-->
                <div class="btn-group" style="float:right;">
                    <button type="button" class="btn btn-warning btn-lg active dropdown-toggle" data-toggle="dropdown">
                    Add Post <span class="caret"></span></button>
                    <ul class="dropdown-menu" role="menu">
                     <li><a href="residentialHouse.aspx">Residential House</a></li>
                      <li><a href="commercialSpace.aspx">Commercial Space</a></li>
                    </ul>
                </div>
               <!-- DROPDOWN ADD POST button end-->

                <div style="float:right;">
                   <asp:Button ID="post"  class="btn btn-warning btn-lg active" runat="server" Text="My Post" OnClick="post_Click" />
              </div>

           </h1>
          <!--CATEGORY header end-->
            
        </div>



     <div class="row">

    <!-- CATEGORY OPTION BUTTONS start-->
      <div class="btn-group btn-group-justified">

            <a href="bachelorMess.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-home"></span>&nbsp&nbsp Bachelor Mess</a>
            <a href="femaleMess.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-adjust"></span>&nbsp&nbsp Female Mess</a>
            <a href="familyHouse.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-calendar"></span>&nbsp&nbsp Family House</a>
            <a href="sublet.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-share"></span>&nbsp&nbsp Sublet</a>
            <a href="office.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-briefcase"></span>&nbsp&nbsp Office</a>
            <a href="garage.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-road"></span>&nbsp&nbsp Garage</a>
            <a href="shop.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp&nbsp Shop</a>

      </div>
      <!-- CATEGORY OPTION BUTTONS end-->
        
      <!-- RECENTLY POSTED ADS start-->
       
         <h1 class="page-header">Recently Posted Ads
              <small>Shop</small>
         </h1>
      
      <!-- RECENTLY POSTED ADS start-->

          <!-- SORT and SEARCH start --> 
            <div>
                <h4><p style="position:absolute;left:565px;top:330px;font:medium">Sort By:</p></h4>

                <asp:Button ID="d" class="btn btn-danger" runat="server" Text="Date" style="position:absolute;left:650px;top:325px; right: 233px;" OnClick="d_Click"></asp:Button>
                <asp:Button ID="r" class="btn btn-danger" runat="server" Text="Rent" style="position:absolute;left:710px;top:325px; right: 263px;" OnClick="r_Click"></asp:Button>

           </div>


      <!-- RECENT ADS SHOW LIST start-->
	  
      <div id="catlist">
       
            <!--First list start-->
            <dl>
		        <dt><img src=<%=obj.image[1]%> alt="Unavailable" width="93" height="62" /><strong> <%=obj.time[1] %> </strong><strong><%=obj.rent[1] %></strong><a href=<%=obj.post[1] %>><%=obj.head[1] %></a></dt>
                <!-- <asp:HyperLink id="hyperlink1"  NavigateUrl="mainPage.aspx?id=123" Text="link"  runat="server"/> -->

                <dd>
			        <p><%=obj.description[1] %></p>
                   
		        </dd>
	        </dl>
            <!--First list end-->

            <!--Second list start-->       
	        <dl>
		        <dt><img src=<%=obj.image[2]%> alt="Unavailable" width="93" height="62" /><strong> <%=obj.time[2] %> </strong><strong><%=obj.rent[2] %></strong><a href=<%=obj.post[2] %>><%=obj.head[2]%></a></dt>
		        <dd>
			        <p><%=obj.description[2] %></p>
		        </dd>
	        </dl>
            <!--Second list end-->

            <!--Third list start-->       
	        <dl>
		        <dt><img src=<%=obj.image[3]%> alt="Unavailable" width="93" height="62" /><strong> <%=obj.time[3] %> </strong><strong><%=obj.rent[3] %></strong><a href=<%=obj.post[3] %>><%=obj.head[3] %></a></dt>
		        <dd>
			        <p><%=obj.description[3]%></p>
		        </dd>
	        </dl>
            <!--Third list end-->

            <!--Fourth list start-->      
	        <dl>
		        <dt><img src=<%=obj.image[4]%> alt="Unavailable" width="93" height="62" /><strong> <%=obj.time[4] %> </strong><strong><%=obj.rent[4] %></strong><a href=<%=obj.post[4] %>><%=obj.head[4] %></a></dt>
		        <dd>
			        <p><%=obj.description[4]%></p>
		        </dd>
	        </dl>
            <!--Fourth list end-->

            <!--Fifth list start-->       
	        <dl>
		        <dt><img src=<%=obj.image[5]%> alt="Unavailable" width="93" height="62" /><strong> <%=obj.time[5] %> </strong><strong><%=obj.rent[5] %></strong><a href=<%=obj.post[5] %>><%=obj.head[5] %></a></dt>
		        <dd>
			        <p><%=obj.description[5]%></p>
		        </dd>
	        </dl>
            <!--Fifth list end-->

      </div>
         <!-- RECENT ADS SHOW LIST end -->


	</div>

        <!-- PAGINATION START -->
        <div class="row">
            
            <ul class="pagination" style="margin-left:330px;"> 
                <li><a href="#">&laquo;</a></li>
                <li class=<%=jole[1]%>><a href="shop.aspx?id=1">1</a></li>
                <li class=<%=jole[2]%>><a href="shop.aspx?id=2">2</a></li>
                <li class=<%=jole[3]%>><a href="shop.aspx?id=3">3</a></li>
                <li class=<%=jole[4]%>><a href="shop.aspx?id=4">4</a></li>
                <li class=<%=jole[5]%>><a href="shop.aspx?id=5">5</a></li>
                <li class=<%=jole[6]%>><a href="shop.aspx?id=6">6</a></li>
                <li class=<%=jole[7]%>><a href="shop.aspx?id=7">7</a></li>
                <li class=<%=jole[8]%>><a href="shop.aspx?id=8">8</a></li>
                <li class=<%=jole[9]%>><a href="shop.aspx?id=9">9</a></li>
                <li class=<%=jole[10]%>><a href="shop.aspx?id=10">10</a></li>
                <li class=<%=jole[11]%>><a href="shop.aspx?id=11">11</a></li>
                <li class=<%=jole[12]%>><a href="shop.aspx?id=12">12</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
            
        </div>
        <!-- PAGINATION END-->         

       

</div>
    <!--CONTAINER class end-->
    </form>

  <!-- FOOTER Start -->
        <footer class="footer">
                    <div class="footer1">
                       <p style="text-align:center;"><span style="color:white;">Copyright &copy; To_Let.com &nbsp 2017</span></p>
                   </div>                           
        </footer>
     <!-- FOOTER End -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>