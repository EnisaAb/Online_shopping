<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="On.ForgotPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
   <style>
       body {
  margin: 0;
  padding: 0;
  background-color: #a8dbe3;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 300px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
       #login .container #login-row #login-column #login-box #login-form #register-link {
           margin-top: -85px;
       }

       .navbar-new-top{
    background: #fff;
}
.navbar-brand{
    font-weight: 600;
}
.navbar-brand img{
    width: 20%;
}
.navbar-new-top ul{
    margin-right: 9%;
}
.navbar-new-top ul li{
    margin-right: 8%;
}
.navbar-new-bottom{
    background-color: #f7f7f7;
    box-shadow: 0 5px 6px -2px rgba(0,0,0,.3);
    border-top: 1px solid #e0e0e0;
    margin-top: 4%;
    height: 40px;
}
.navbar-new-bottom ul li{
    margin-left: 2%;
    margin-right: 2%;
}
.navbar-nav .nav-item a {
    color:#79c7d4;
    font-size: 14px;
    font-weight: 600;
    transition: 1s ease;
}
.navbar-nav .nav-item a:hover{
    color: #0062cc;
}
.dropdown-menu.show{
    background: #f8f9fa;
    border-radius: 0;
}
.header-btn{
    width: 161%;
    border: none;
    border-radius: 1rem;
    padding: 8%;
    background: #0062cc;
    color: #fff;
    font-weight: 700;
    font-size: 13px;
    cursor: pointer;
}



   </style>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top">
            <a href="/" class="navbar-brand"><img src="#" alt=""/>Bootstrap 4</a>
            <ul class="nav navbar-nav mr-auto"></ul>
            <ul class="navbar-nav flex-row">
                <li class="nav-item">
                    <a class="nav-link px-2" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-2" href="AboutUs.aspx">AboutUs</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link px-2" href="Contact.aspx">Contact</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link px-2" href="Login.aspx">Login</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link px-2" href="AdminLog.aspx">Admin</a>
                </li>
               
            </ul>
           
        </nav>
    <div id="login">
        <h3 class="text-center text-white pt-5"></h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form  class="form" runat="server">
                            <h3 class="text-center text-info">&nbsp;</h3>
                            <h3 class="text-center text-info">Forgot Password</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Email:</label><br/>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="red" ErrorMessage="example@organisation.xxx" ValidationExpression="\w+@\w+\.\w+"></asp:RegularExpressionValidator>
                            </div>
                                   
                            <div class="form-group">
               
        <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-info btn-md text-center" OnClick="Button1_Click"  /><br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                               
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="Login.aspx" class="text-info">Log In</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
