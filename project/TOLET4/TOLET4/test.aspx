<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="TOLET4.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>To_Let.com</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="CustomStyles.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
       
         <!-- HEADER START -->
    <div class="row">
       <div class="col-lg-12">
          <div class="customDiv">

               <!--LOGO START-->
               <div class="logo">
                   <h1><a href="#"><strong>To</strong>_Let</a></h1>
               </div>
               <!--LOGO END-->

               
               <!-- SIGN IN and SIGN OUT button on every page start-->    
                <div style="position:absolute; right:30px; top:10px;">
                    <button type="button" class="btn btn-primary disabled">Sign In</button> 
                    <button type="button" class="btn btn-primary active">Sign Out</button>                  
                </div>
              <!-- SIGN IN and SIGN OUT button on every page end-->    

              <!-- Navigation bar start-->
                <div class="shiftright"> 
                    <asp:Button ID="Button1" runat="server"  class="btn btn-success btn-lg"  Text="Button" OnClick="Button1_Click" Height="63px" Width="127px" />
                    <a href="contactUs.aspx" class="btn btn-danger"><span aria-hidden="true" class="glyphicon glyphicon-home"></span>&nbsp&nbsp Home</a>
                    <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-user"></span> About Us</button>
                    <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-headphones"></span> Contact Us</button>
                    <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-warning-sign"></span> Terms and Conditions</button>                              
              </div>  
               <!-- Navigation bar end-->    
              
          </div>
       </div>         
    </div>
    <!-- HEADER end-->


    
    <!--CONTAINER class start-->
    <div class="container">    
	
        <div class="row">
        
           <!--CATEGORY header start-->
           <h1 class="page-header">Categories 
            
               <!-- DROPDOWN ADD POST button start-->
                <div class="btn-group" style="float:right;">
                    <button type="button" class="btn btn-warning btn-lg active dropdown-toggle" data-toggle="dropdown">
                    Add Post <span class="caret"></span></button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#">Residential House</a></li>
                      <li><a href="#">Commercial Space</a></li>
                    </ul>
                </div>
               <!-- DROPDOWN ADD POST button end-->
           </h1>
          <!--CATEGORY header end-->
            
        </div>



     <div class="row">

      <!-- CATEGORY OPTION BUTTONS start-->
      <div class="btn-group btn-group-justified">
          
            
            <a href="contactUs.aspx" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-home"></span> Bachelor Mess</a>
            <a href="#" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-adjust"></span> Female Mess</a>
            <a href="#" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-calendar"></span> Family House</a>
            <a href="#" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-share"></span> Sublet</a>
            <a href="#" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-briefcase"></span> Office</a>
            <a href="#" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-road"></span> Garage</a>
            <a href="#" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-shopping-cart"></span> Shop</a>

      </div>
      <!-- CATEGORY OPTION BUTTONS end-->
        
      <!-- RECENTLY POSTED ADS start-->
       
         <h1 class="page-header">Recently Posted Ads</h1>
      
      <!-- RECENTLY POSTED ADS start-->


      <!-- RECENT ADS SHOW LIST start-->
	  
      <div id="catlist">
       
            <!--First list start-->
            <dl>
		        <dt><img src="http://placehold.it/300x200" alt="Error" width="93" height="62" /><strong>Some info text here</strong><a href="#">The name of the Advertise goes here</a></dt>
		
                <dd>
			        <p>The description of whatever the heading is about goes here. The description of whatever the heading is about goes here.The description of whatever the heading is about goes here.</p>
		        </dd>
	        </dl>
            <!--First list end-->

            <!--Second list start-->       
	        <dl>
		        <dt><img src="http://placehold.it/300x200" alt="Error" width="93" height="62" /><strong>Some info text here</strong><a href="#">The name of the Advertise goes here</a></dt>
		        <dd>
			        <p>The description of whatever the heading is about goes here. The description of whatever the heading is about goes here.The description of whatever the heading is about goes here.</p>
			        <p>Another line of text to show that it doesn't wrap under the image. Another line of text to show that it doesn't wrap under the image. </p>
		        </dd>
	        </dl>
            <!--Second list end-->

            <!--Third list start-->       
	        <dl>
		        <dt><img src="http://placehold.it/300x200" alt="Error" width="93" height="62" /><strong>Some info text here</strong><a href="#">The name of the Advertisae goes here but with a longer line so that it wraps to the next line.</a></dt>
		        <dd>
			        <p>The description of whatever the heading is about goes here. The description of whatever the heading is about goes here.The description of whatever the heading is about goes here.</p>
		        </dd>
	        </dl>
            <!--Third list end-->

            <!--Fourth list start-->      
	        <dl>
		        <dt><img src="http://placehold.it/300x200" alt="Error" width="93" height="62" /><strong>Some info text here</strong><a href="#">The name of the Advertise goes here</a></dt>
		        <dd>
			        <p>The description of whatever the heading is about goes here. The description of whatever the heading is about goes here.The description of whatever the heading is about goes here.</p>
		        </dd>
	        </dl>
            <!--Fourth list end-->

            <!--Fifth list start-->       
	        <dl>
		        <dt><img src="http://placehold.it/300x200" alt="Error" width="93" height="62" /><strong>Some info text here</strong><a href="#">The name of the Advertise goes here</a></dt>
		        <dd>
			        <p>The description of whatever the heading is about goes here. The description of whatever the heading is about goes here.The description of whatever the heading is about goes here.</p>
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
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">7</a></li>
                <li><a href="#">8</a></li>
                <li><a href="#">9</a></li>
                <li><a href="#">10</a></li>
                <li><a href="#">11</a></li>
                <li><a href="#">12</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
            
        </div>
        <!-- PAGINATION END-->        

       

</div>
    <!--CONTAINER class end-->


  <!-- FOOTER Start -->
        <footer class="footer">
                    <div class="footer1">
                       <p style="text-align:center;"><span style="color:white;">Copyright &copy; To_Let.com &nbsp 2017</span></p>
                   </div>                           
        </footer>
     <!-- FOOTER End -->





    </form>


     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>
