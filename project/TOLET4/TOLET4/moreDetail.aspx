<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="moreDetail.aspx.cs" Inherits="TOLET4.moreDetail" %>

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
                    <a href="contactUs.aspx" class="btn btn-danger"><span class="glyphicon glyphicon-headphones"></span>&nbsp&nbsp Contact Us</a>
                    <a href="termsConditions.aspx" class="btn btn-danger"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp&nbsp Terms and Conditions</a>                              
              </div>  
               <!-- Navigation bar end-->
              
          </div>
       </div>         
    </div>
    <!-- HEADER end-->
    

      <!-- Page Content : About us start -->
    <div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Advertise Header Here</h1>   <!-- advertise header here -->
            </div>
        </div>

        <!-- Team Members Row -->
        <div class="row">
          
            <!-- image , size , address -->
            <div class="col-lg-4 col-sm-6">

                <div class="text-center">
                    <img class="img-thumbnail img-responsive img-center" src=<%=image%> alt="">   
                </div>
                           
               
                <div style="text-align:left;">
                   <p><strong>Size :</strong></p><%=size %>
                   <p><strong>Address :</strong></p><%=address %>
               </div> 
              
                

            </div>

              <!-- list description -->          

             <div class="col-lg-4 col-sm-6" >

                 <p><strong>Category :</strong></p><%=category %>
                 <p><strong>Rent :</strong></p><%=rent %>
                 <p><strong>Bedroom :</strong></p><%=bedroom %>
                 <p><strong>Bathroom :</strong></p><%=bathroom %>
                 <p><strong>Car Parking :</strong></p><%=car %>
                 <p><strong>Lift :</strong></p><%=lift %>
                 <p><strong>Contact No. :</strong></p><%=contact %>
                 <p><strong>Email :</strong></p><%=email %>
               
            </div>

            <!-- posted time and description -->

            <div class="col-lg-4 col-sm-6">
                 <h3 class="page-header">Description:</h3>

                <p> <%=description %></p>


                <h3 class="page-header">Posted Tme:</h3>

                 <p> <%=time %></p>
                
            </div>
          
        </div>  
         <hr/>

    </div>
    <!-- /.container -->

     

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
