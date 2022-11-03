<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="On.Home" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <title>BEVG</title>
   <style>    .navbar-new-top{
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
      
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
     <nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top">
            <a href="/" class="navbar-brand"><img src="#" alt=""/></a>
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
        <!-- Header-->
        <form runat="server">
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Shop in style</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Make you shopping journey the best</p>
                </div>
            </div>
        </header>
        <!-- Section-->
            <div class="row">
        <asp:ListView ID="ListView1" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <ItemTemplate>
                 <a href='Details.aspx?IDP=<%#Eval("ID") %>&IDU=<%=Convert.ToInt64(Session["User"])%>' class="btn btn-outline-dark mt-auto">

                    <div class="col-4 mb-5">
                        <div class="card h-100 " style="height:300px; width:300px; margin-left:100px;">
                            <!-- Product image-->
                            <img class="card-img-top" src="<%# Eval("Foto") %>" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%# Eval("Produkti") %></h5>
                                    <!-- Product price-->
                                 <%# Eval("Cmimi") %>         <%# Eval("valuta") %>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center">
                              
                            </div>
                        </div>

                          
                            </div>
                </a>
            
            </ItemTemplate>
        </asp:ListView>
                </div>
            </form>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

