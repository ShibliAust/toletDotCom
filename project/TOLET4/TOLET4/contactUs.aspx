<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="TOLET4.contactUs" %>

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
                    <a href="contactUs.aspx" class="btn btn-danger"><span class="glyphicon glyphicon-headphones"></span>&nbsp&nbsp Contact Us</a>
                    <a href="termsConditions.aspx" class="btn btn-danger"><span class="glyphicon glyphicon-warning-sign"></span>&nbsp&nbsp Terms and Conditions</a>                              
              </div>  
               <!-- Navigation bar end-->
              
          </div>
       </div>         
    </div>
    <!-- HEADER end-->

   


    
    <!--CONTAINER class start-->
    <div class="container">


    <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Contact Us
                    <small>Feel free to communicate with us!</small>
                </h1>
            </div>
        </div>



    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form action=" " method="post" id="form1" runat="server">
                <div class="row">
                    <div class="col-md-6">

                        <!-- Name Text box -->
                        <div class="form-group">
                            <label for="name">
                                Name</label>                     
                            <asp:TextBox ID="name" type="text" class="form-control" placeholder="Enter name" required="required" runat="server"></asp:TextBox>
                        </div>

                        <!-- Email Text box -->
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>                             
                                <asp:TextBox ID="email" type="email" class="form-control" placeholder="Enter email" required="required" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Subject option box -->
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <select id="category" name="subject" class="form-control" runat="server" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="complaint">Complaint</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="information">Information</option>
                                <option value="others">Others</option>
                            </select>
                        </div>
                    </div>

                   <!-- Message Text box -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <asp:TextBox id="massege" TextMode="multiline" class="form-control" rows="9" cols="10" required="required"
                                placeholder="Message" runat="server" />
                        </div>
                    </div>

                    <!-- send message button start -->
                    <div class="col-md-12">                    
                        <asp:Button ID="btnContactUs" class="btn btn-primary pull-right" runat="server" Text="Send Message" OnClick="btnContactUs_Click" />
                    </div>
                     <!-- send message button end -->
               </div>
                </form>
            </div>
        </div>

            <!-- office description on right side -->

        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span>&nbsp&nbsp Our office</legend>
            <address>
                <strong>To_Let, Inc.</strong><br>
                795 Bashundhara Avenue, 3rd Floor<br>
                Panthapath, Farmgate, Dhaka-1300<br>
                <hr>
                <strong>Phone: 01687842121</strong>
                <hr />
            </address>
            <address>
                <strong>Email Address:</strong><br>
                <a href="mailto:#">tolet_bd@gmail.com</a>
            </address>
            </form>
        </div>
          <!-- office description on right side end-->

      </div>       
       <hr>
    </div>
    <!--CONTAINER class end-->
     
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