<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="TOLET4.signUp" %>

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

          <!-- for header purpose -->
            
            <div class="row">
               <div class="col-lg-12">
                   <div class="customDiv">
                       <div class="logo">
                           <h1><a href="coverPage.aspx"><strong>To</strong>_Let</a></h1>
                       </div>      
                       
                        <!-- SIGN IN and SIGN OUT button on every page start-->    
                        <div style="position:absolute; right:30px; top:10px;">
                            <button type="button" class="btn btn-primary disabled">Sign In</button> 
                            <button type="button" class="btn btn-primary disabled">Sign Out</button>                  
                        </div>
                        <!-- SIGN IN and SIGN OUT button on every page end-->    

                   </div>
               </div>         
            </div>
    

      <!-- sign up start here -->

          <div class="container">

             <form class="well form-horizontal" action=" " method="post" id="form1" runat="server">
                <fieldset>

                <!-- Form Name -->
                <legend><center><h2><b>Registration Form</b></h2></center></legend><br>

                <!--Name Text input-->

                <div class="form-group">
                  <label class="col-md-4 control-label">Full Name</label>  
                  <div class="col-md-4 inputGroupContainer">
                  <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      
                      <asp:TextBox ID="name" name="full_name" placeholder="Full Name" class="form-control"  runat="server"></asp:TextBox>
                  
                    </div>
                  </div>
                </div>
                                
                <!--Email Text input-->

                <div class="form-group">
                  <label class="col-md-4 control-label">E-Mail</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <asp:TextBox ID="email" name="email" placeholder="E-Mail Address" class="form-control"  type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!--Password Text input-->

                <div class="form-group">
                  <label class="col-md-4 control-label" >Password</label> 
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox ID="password" name="user_password" placeholder="Password" class="form-control"  type="password" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!--Confirm Password Text input-->

                <div class="form-group">
                  <label class="col-md-4 control-label" >Confirm Password</label> 
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <asp:TextBox name="confirm_password" placeholder="Confirm Password" class="form-control"  type="password" ID="confirmpass" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>              

                <!--Contact No Text input-->
       
                <div class="form-group">
                  <label class="col-md-4 control-label">Contact No.</label>  
                    <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                        <asp:TextBox ID="contact" name="contact_no" placeholder="+880" class="form-control" type="text" runat="server"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!-- Select Basic -->

                <!-- Success message -->
                <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

                <!-- Button -->
                <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                  <div class="col-md-4"><br>
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="submit" OnClick="Button1_Click" />
                    <!--&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-danger" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp SUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>-->
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>