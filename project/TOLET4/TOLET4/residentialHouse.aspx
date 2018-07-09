<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="residentialHouse.aspx.cs" Inherits="TOLET4.residentialHouse" %>

<!DOCTYPE html>
 
<html xmlns="http://w...content-available-to-author-only...3.org/1999/xhtml">
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
      <script src="https://o...content-available-to-author-only...n.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://o...content-available-to-author-only...n.com/respond/1.4.2/respond.min.js"></script>
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
 
 
      <!-- sign up start here -->
 
          <div class="container">
 
             <form class="well form-horizontal" action=" " method="post"  id="form1" runat="server">
                <fieldset>
 
                <!-- Form Name -->
                <legend><center><h2><b>Residential House Form</b></h2></center></legend><br>
 
                <!--Title/Heading Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Title/Heading</label>  
                  <div class="col-md-4 inputGroupContainer">
                  <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-paperclip"></i></span>
 
                      <asp:TextBox ID="title" placeholder="Give a title" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
                 <!--Category Select input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label" id="categor">Category</label>  
                    <div class="col-md-4 inputGroupContainer">
                         <select class="form-control" runat="server" id="category">
                                <option>Family House</option>
                                <option>Sublet</option>
                                <option>Bachelor Mess</option>
                                <option>Female Mess</option>
                        </select>
 
 
                  </div>
                </div>
 
                <!--Division Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Division</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
 
                        <asp:TextBox ID="division" placeholder="Division" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
 
                 <!--District Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">District</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
 
                        <asp:TextBox ID="district" placeholder="District" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
 
                 <!--Address Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Address</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
 
                        <asp:TextBox ID="address" placeholder="Address of the house" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
                 <!--Rent Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Rent</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
                        <asp:TextBox ID="rent" placeholder="Keep blank if 'Negotiable'." class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
 
                <!--size Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Size</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-fullscreen"></i></span>
 
                        <asp:TextBox ID="size" placeholder="size in sqaure feet" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
                 <!--short description Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Description</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
 
                        <asp:TextBox ID="description"  placeholder="Description in short" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
 
                <!-- Bed room Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Bedroom</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-bed"></i></span>
 
                        <asp:TextBox ID="bedroom" placeholder="how many bed rooms?" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
                 <!-- Bath room Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Bathroom</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-tent"></i></span>
 
                        <asp:TextBox ID="bathroom" placeholder="how many bath rooms?" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
                 <!-- Car Parking Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Car Parking</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-retweet"></i></span>
 
                        <asp:TextBox ID="parking" placeholder="Yes/No" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
                 <!-- Lift Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Lift</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-sort"></i></span>
 
                        <asp:TextBox ID="lift" placeholder="Yes/No" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
 
 
                <!--Contact No Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">Contact No.</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
 
                        <asp:TextBox ID="contact" placeholder="+880" class="form-control" type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>
                
                <!-- Email Text input -->
                <div class="form-group">
                  <label class="col-md-4 control-label">Email</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <asp:TextBox ID="email" placeholder="Email" class="form-control" type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!-- image input -->
                <div class="form-group">
                  <label class="col-md-4 control-label">Upload Image</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">                       
                        <!-- <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="None"></asp:FileUpload> -->
                        <asp:FileUpload ID="imgload" CssClass="form-control" runat="server" />
                    </div>
                  </div>
                </div>
                     

 
                <!-- Success message -->
                <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>
 
                <!-- Button -->
                <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                  <div class="col-md-4"><br>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="Submit" class="btn btn-danger" runat="server" Text="SUBMIT" OnClick="Button1_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
 
                  </div>
                </div>
 
                </fieldset>
                </form>     
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
    <script src="https://a...content-available-to-author-only...s.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>