<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="On.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <style>/*Font-awesome integration*/
@import url("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
/*Google font integration*/
@import url('https://fonts.googleapis.com/css?family=Roboto');

#contact{
    background-color:#f1f1f1;
    font-family: 'Roboto', sans-serif;
}

#contact .well{
    margin-top:30px;
    border-radius:0;
}

#contact .form-control{
    border-radius: 0;
    border:2px solid #1e1e1e;
}

#contact button{
    border-radius:0;
    border:2px solid #1e1e1e;
}

#contact .row{
    margin-bottom:30px;
}

@media (max-width: 768px) { 
    #contact iframe {
        margin-bottom: 15px;
    }
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
    
}</style>
</head>
<body>
    <nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top">
            <a href="/" class="navbar-brand"><img src="#" alt=""/>Bootstrap 4</a>
            <ul class="nav navbar-nav mr-auto"></ul>
            <ul class="navbar-nav flex-row">
                <li class="nav-item">
                    <a class="nav-link px-2" href="Home.aspx">Home</a>
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
    <br /><br />
   <section id="contact">
  <div class="container">
    <div class="well well-sm">
      <h3><strong>Contact Us</strong></h3>
    </div>
	
	<div class="row">
	  <div class="col-md-7">
          
        <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3736489.7218514383!2d90.21589792292741!3d23.857125486636733!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1506502314230" width="100%" height="315" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>

      <div class="col-md-5">
          <h4><strong>Get in Touch</strong></h4>
        <form runat="server">
          <div class="form-group">
           <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
       <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
          <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
       <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ForeColor="red" ErrorMessage="example@organisation.xxx" ValidationExpression="\w+@\w+\.\w+"></asp:RegularExpressionValidator>
          
          </div>
          <div class="form-group">
             <asp:Label ID="Label3" runat="server" Text="Comments"></asp:Label>
       <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
          </div>
       <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-info" OnClick="Button1_Click" />
        
           
        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>
