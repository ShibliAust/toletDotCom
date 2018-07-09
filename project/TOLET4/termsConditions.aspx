<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="termsConditions.aspx.cs" Inherits="TOLET4.termsConditions" %>

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
    

      <!-- Page Content : terms and conditions start -->
    <div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Terms and Conditions
                    <small>Attention!</small>
                </h1>
                
                <span style="font-family:Monaco">
                <p><strong style="font-size:large">To_Let.com Terms of Service ("Agreement")</strong></p> 
                <hr />
                <p>This Agreement was last modified on July 10, 2017.</p>                   
                <p>Please read these Terms of Service completely which is owned and operated by our team. This Agreement documents the legally binding terms and conditions attached to the use of the Site at To_Let.com.</p>                   
                <p>By using or accessing the Site in any way, viewing or browsing the Site, or adding your own content to the Site, you are agreeing to be bound by these Terms of Service.</p>
                </span>
                 
                <hr />
                <span style="font-family:Monaco">
                <p><strong style="font-size:large">Intellectual Property</strong></p>
                <hr />
                <p>The Site and all of its original content are the sole property of Your Nowhere Town and are, as such, fully protected by the appropriate international copyright and other intellectual property rights laws.</p>
                </span>
                
                <hr />
                <span style="font-family:Monaco">
                <p><strong style="font-size:large">Termination</strong></p>
                <hr />
                <p>Your Nowhere Town reserves the right to terminate your access to the Site, without any advance notice.</p>
                </span>
                
                <hr />
                <span style="font-family:Monaco">
                <p><strong style="font-size:large">Governing Law</strong></p>
                <hr />
                <p>This Agreement is governed in accordance with the laws of Government of Bangladesh.</p>
                </span>
                
                <hr />
                <span style="font-family:Monaco">
                <p><strong style="font-size:large">Changes to This Agreement</strong></p>
                <hr />
                <p>To_Let.com reserves the right to modify these Terms of Service at any time. We do so by posting and drawing attention to the updated terms on the Site. Your decision to continue to visit and make use of the Site after such changes have been made constitutes your formal acceptance of the new Terms of Service.
                Therefore, we ask that you check and review this Agreement for such changes on an occasional basis. Should you not agree to any provision of this Agreement or any changes we make to this Agreement, we ask and advise that you do not use or continue to access the site immediately.</p>
                </span>

                <hr />
                <span style="font-family:fantasy;">
                <p><strong style="font-size:large">If you have any questions about this Agreement, please feel free to contact us at  <a href="mailto:#">tolet_bd@gmail.com</a></strong></p>
                </span>

            </div>
        </div>        
         <hr>

    </div>
    <!-- /.container -->

     

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