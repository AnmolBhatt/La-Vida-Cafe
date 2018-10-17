<!DOCTYPE html>
<html lang="en">
<head>
<title>LA VIDA CAFE</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script src="js/jquery-1.6.js" ></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Forum_400.font.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.3.js"></script>
<script src="js/tms_presets.js"></script>
<script src="js/script.js"></script>
<script src="js/atooltip.jquery.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<style type="text/css">.slider_bg {behavior:url("js/PIE.htc")}

}

</style>
<![endif]-->
</head>
<body id="page1">
<div class="body6">
  <div class="body1">
    <div class="body5">
      <div class="main">
        <!-- header --><!-- / header -->
        <!-- content -->
        <article id="content">
          <div class="slider_bg">
            <div class="slider">
              <ul class="items">
                <li> <img src="images/img1.jpg" alt="">
                  <div class="banner"> <strong>Italian<span>Fettuccine</span></strong> <b>Dish of the Day</b>
                    <p> <span>Lorem ipsum dolamet consectetur<br>
                      adipisicing elit, sed do eiusmod tempor aliqua enim ad minim veniam, quis nosinci- didunt ut labore et dolore.</span> </p>
                  </div>
                </li>
                <li> <img src="images/img2.jpg" alt="">
                  <div class="banner"> <strong>succulent<span>meat</span></strong> <b>Dish of the Day</b>
                    <p> <span>Lorem ipsum dolamet consectetur <br>
                      adipisicing elit, sed do eiusmod tempor aliqua enim ad minim veniam, quis nosinci- didunt ut labore et dolore.</span> </p>
                  </div>
                </li>
                <li> <img src="images/img3.jpg" alt="">
                  <div class="banner"> <strong>French-Style<span>Tartlet</span></strong> <b>Dish of the Day</b>
                    <p> <span>Lorem ipsum dolamet consectetur <br>
                      adipisicing elit, sed do eiusmod tempor aliqua enim ad minim veniam, quis nosinci- didunt ut labore et dolore.</span> </p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <header>
              <h1><a href="index.html" id="logo">LA VIDA CAFE</a></h1>
            <nav>
              <ul id="top_nav">
                <li><a href="register.jsp"><img src="images/icon_1.gif" alt=""></a></li>
                <li><a href="#"><img src="images/icon_2.gif" alt=""></a></li>
                <li class="end"><a href="contacts.html"><img src="images/icon_3.gif" alt=""></a></li>
              </ul>
            </nav>
            <nav>
              <ul id="menu">
                 <li class="active"><a href="food.jsp">FOOD</a></li>
                <li><a href="cafe.jsp">CAFE</a></li>
                <li><a href="bars.jsp">BARS</a></li>
                <li><a href="pubs.jsp">PUBS</a></li>
                <li><a href="contact.jsp">Contacts</a></li>
              
				
              </ul>
            </nav>
          </header>
         <h1><a href="adminlogin.jsp">FOR ADMIN CLICK HERE</a></h1>
          <div class="wrap">
            <section class="cols">
              <div class="box">
                <div>
                  <h2>Welcome <span>to Us!</span></h2>
                  <figure><img src="images/page1_img1.jpg" alt="" ></figure>
                  <p class="pad_bot1">This Deliccio Template goes with two packages – with PSD source files and without them. PSD source is available for free for the registered members.</p>
                  <a href="#" class="button1">Read More</a> </div>
              </div>
            </section>
            <section class="cols pad_left1">
              <div class="box">
                <div>
                  <h2>About <span>Us</span></h2>
                  <figure><img src="images/page1_img2.jpg" alt="" ></figure>
                  <p class="pad_bot1">This is one of free website templates created by TemplateMonster.com team. This website template is optimized for 1024x768 screen res.</p>
                  <a href="#" class="button1">Read More</a> </div>
              </div>
            </section>
            <section class="cols pad_left1">
              <div class="box">
                <div>
                  <h2>Our <span>Services</span></h2>
                  <figure><img src="images/page1_img3.jpg" alt="" ></figure>
                  <ul class="list1 pad_bot1">
                    <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                    <li><a href="#">Consectetur adipisicing elit sed</a></li>
                    <li><a href="#">Eiusmod tempor incididunt labore</a></li>
                    <li><a href="#">Ut enim ad minim veniam</a></li>
                  </ul>
                  <a href="#" class="button1">Read More</a> </div>
              </div>
            </section>
          </div>
        </article>
      </div>
    </div>
  </div>
</div>
<div class="body2">
  <div class="main">
    <article id="content2">
      <center>
	    <h1>Customer Register yourself here!</h1>
	  	<form method="post" action="regservlet" >
		<table width="500" border="0">
		<tr>
    <td>First Name:</td>
    <td><input type="text" placeholder="First Name" name="Fname" required="required"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Last Name:</td>
    <td><input type="text" placeholder="Last Name" name="Lname" required="required"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Password:</td>
    <td><input type="password" placeholder="Password" name="Pwd" required="required" /></td></tr></br></br>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Phone Number:</td>
    <td><input type="text" placeholder="Phone Number" name="Contact" required="required" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Email:</td>
    <td><input type="email" placeholder="email" name="Email" required="required" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Address:</td>
    <td><textarea rows="5" cols="40" name="Address" required="required"></textarea></td>
    <td>&nbsp;</td>
  </tr>
</table></br></br>
<input type="submit" value="REGISTER" />
</form>
<a href="login.jsp"> Login Here</a>
 	  </center>
    </article>
    <!-- / content -->
  </div>
</div>
<div class="body3">
  <div class="body4">
    <div class="main">
      <!-- footer -->
      <footer>
        <div class="wrapper">
          <section class="col1 pad_left1">
            <h3>Toll Free: <span>1-800 123 45 67</span></h3>
            Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
            Design by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a></section>
          <section class="col2 pad_left1">
            <h3>Follow Us </h3>
            <ul id="icons">
              <li><a href="#" class="normaltip"><img src="images/icon1.gif" alt=""></a></li>
              <li><a href="#" class="normaltip"><img src="images/icon2.gif" alt=""></a></li>
              <li><a href="#" class="normaltip"><img src="images/icon3.gif" alt=""></a></li>
              <li><a href="#" class="normaltip"><img src="images/icon4.gif" alt=""></a></li>
              <li><a href="#" class="normaltip"><img src="images/icon5.gif" alt=""></a></li>
            </ul>
          </section>
        </div>
        <!-- {%FOOTER_LINK} -->
      </footer>
      <!-- / footer -->
    </div>
  </div>
</div>
<script>Cufon.now();</script>
</body>
</html>
