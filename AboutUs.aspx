<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="On.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
      <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="Home.css" media="screen">

     <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
     <link  rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link  rel="stylesheet" href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|PT+Sans+Caption:400,700">
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
 <section class="u-align-center-sm u-align-center-xs u-clearfix u-section-1" id="carousel_925a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-center u-container-style u-layout-cell u-palette-4-base u-size-23 u-layout-cell-1">
             
                <div class="u-container-layout u-container-layout-1">
                  <div class="u-image u-image-circle u-image-1" alt="" data-image-width="1000" data-image-height="876"></div>
                  <h3 class="u-custom-font u-text u-text-default u-text-1"> Wellcome to our Site</h3>
                  <p class="u-custom-font u-font-pt-sans u-text u-text-2">We give you the opportunity to shop any time you want with high security of you own personal information </p>
                  <div class="u-social-icons u-spacing-12 u-social-icons-1">
                    <a class="u-social-url" title="facebook" target="_blank" href="https://facebook.com/name"><span class="u-icon u-social-facebook u-social-icon u-text-white"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-2e4f"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-2e4f"><path fill="currentColor" d="M75.5,28.8H65.4c-1.5,0-4,0.9-4,4.3v9.4h13.9l-1.5,15.8H61.4v45.1H42.8V58.3h-8.8V42.4h8.8V32.2
c0-7.4,3.4-18.8,18.8-18.8h13.8v15.4H75.5z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="twitter" target="_blank" href="https://twitter.com/name"><span class="u-icon u-social-icon u-social-twitter u-text-white"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-c508"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-c508"><path fill="currentColor" d="M92.2,38.2c0,0.8,0,1.6,0,2.3c0,24.3-18.6,52.4-52.6,52.4c-10.6,0.1-20.2-2.9-28.5-8.2
	c1.4,0.2,2.9,0.2,4.4,0.2c8.7,0,16.7-2.9,23-7.9c-8.1-0.2-14.9-5.5-17.3-12.8c1.1,0.2,2.4,0.2,3.4,0.2c1.6,0,3.3-0.2,4.8-0.7
	c-8.4-1.6-14.9-9.2-14.9-18c0-0.2,0-0.2,0-0.2c2.5,1.4,5.4,2.2,8.4,2.3c-5-3.3-8.3-8.9-8.3-15.4c0-3.4,1-6.5,2.5-9.2
	c9.1,11.1,22.7,18.5,38,19.2c-0.2-1.4-0.4-2.8-0.4-4.3c0.1-10,8.3-18.2,18.5-18.2c5.4,0,10.1,2.2,13.5,5.7c4.3-0.8,8.1-2.3,11.7-4.5
	c-1.4,4.3-4.3,7.9-8.1,10.1c3.7-0.4,7.3-1.4,10.6-2.9C98.9,32.3,95.7,35.5,92.2,38.2z"></path></svg></span>
                    </a>
                    <a class="u-social-url" title="instagram" target="_blank" href="https://instagram.com/name"><span class="u-icon u-social-icon u-social-instagram u-text-white"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9d85"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-9d85"><path fill="currentColor" d="M55.9,32.9c-12.8,0-23.2,10.4-23.2,23.2s10.4,23.2,23.2,23.2s23.2-10.4,23.2-23.2S68.7,32.9,55.9,32.9z
	 M55.9,69.4c-7.4,0-13.3-6-13.3-13.3c-0.1-7.4,6-13.3,13.3-13.3s13.3,6,13.3,13.3C69.3,63.5,63.3,69.4,55.9,69.4z"></path><path fill="#FFFFFF" d="M79.7,26.8c-3,0-5.4,2.5-5.4,5.4s2.5,5.4,5.4,5.4c3,0,5.4-2.5,5.4-5.4S82.7,26.8,79.7,26.8z"></path><path fill="currentColor" d="M78.2,11H33.5C21,11,10.8,21.3,10.8,33.7v44.7c0,12.6,10.2,22.8,22.7,22.8h44.7c12.6,0,22.7-10.2,22.7-22.7
	V33.7C100.8,21.1,90.6,11,78.2,11z M91,78.4c0,7.1-5.8,12.8-12.8,12.8H33.5c-7.1,0-12.8-5.8-12.8-12.8V33.7
	c0-7.1,5.8-12.8,12.8-12.8h44.7c7.1,0,12.8,5.8,12.8,12.8V78.4z"></path></svg></span>
                    </a>
                    <a class="u-social-url" target="_blank" data-type="Custom" title="Custom" href=""><span class="u-icon u-social-custom u-social-icon u-text-white u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ff0d"></use></svg><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-ff0d" style="enable-background:new 0 0 512 512;"><g><g><rect y="160" width="114.496" height="352"></rect>
</g>
</g><g><g><path d="M426.368,164.128c-1.216-0.384-2.368-0.8-3.648-1.152c-1.536-0.352-3.072-0.64-4.64-0.896    c-6.08-1.216-12.736-2.08-20.544-2.08c-66.752,0-109.088,48.544-123.04,67.296V160H160v352h114.496V320    c0,0,86.528-120.512,123.04-32c0,79.008,0,224,0,224H512V274.464C512,221.28,475.552,176.96,426.368,164.128z"></path>
</g>
</g><g><g><circle cx="56" cy="56" r="56"></circle>
</g>
</g></svg></span>
                    </a>
                  </div>
                </div>
              </div>
              <div class="u-align-center-sm u-align-center-xs u-align-justify-lg u-align-justify-md u-align-justify-xl u-container-style u-layout-cell u-size-37 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle u-container-layout-2">
                  <h4 class="u-custom-font u-font-montserrat u-text u-text-default u-text-3">About Us</h4>
                  <p class="u-custom-font u-font-montserrat u-text u-text-default u-text-grey-60 u-text-4">Here you will find the best possible security and functionality. We offer many categories that many customers around the world ask for, also trying to be as open and realistic as possible with you. For any concerns, complaints or compliments you want to express please contact us.</p>
                  <a href="Contact.aspx" class="u-active-black u-border-3 u-border-palette-4-base u-btn u-btn-round u-button-style u-hover-black u-none u-radius-50 u-text-active-white u-text-black u-text-hover-white u-btn-1">Contact Us</a>

                
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</body>
</html>
