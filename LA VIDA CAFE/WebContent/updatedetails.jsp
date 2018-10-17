<%@ page import="java.sql.*" %>   
<%@ page import="com.ibm.dao.*" %>   
<% ResultSet rs1=null; %> 

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
<style type="text/css">.slider_bg {behavior:url("js/PIE.htc")}</style>
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
                <li><a href="index.html"><img src="images/icon_1.gif" alt=""></a></li>
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
                <li><a href="contacts.jsp">Contacts</a></li>
				
              </ul>
            </nav>
          </header>
          <h1><a href="adminlogin.jsp">FOR MANAGER CLICK HERE</a></h1>
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
<%

//search .....load data......upadte records

prodao obj=new prodao();
String sql="select * from food";
ResultSet rs=obj.FechAlldata(sql);

out.println("<form method='post' action='updatedetails.jsp' >");
out.println("<select name='PID' >");
while(rs.next())
{
	
	out.println("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</option>");
}
out.println("</select>");
out.println("<input type=submit value=SEARCH />");
out.println("</form>");
%>
<%


	if(request.getParameter("PID")!=null){
		 int PID=Integer.parseInt(request.getParameter("PID"));
		 String sql1="select * from food where PID=?";
		 prodao obj1=new prodao();
	     rs1=obj.FetchDataById(sql1, PID);
	
%> 

<center>
	    <h1>FOOD UPDATES HERE!</h1>
	  	<form method="post" action="updatedetservlet" >
	  	 <% while(rs1.next()){ %>
		<table width="500" border="0">
		<tr>
    <td>PRODUCT ID:</td>
    <td><input type="text" placeholder="Product Id" name="PID" value="<%=rs1.getString(1) %>" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>PRODUCT NAME:</td>
    <td><input type="text" placeholder="Product Name" name="Pname" value="<%=rs1.getString(2) %>"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>PRODUCT PRICE:</td>
    <td><input type="text" placeholder="Product price" name="Pprice" value="<%=rs1.getString(3) %>" /></td></tr></br></br>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>PRODUCT EXPIRY:</td>
    <td><input type="text" placeholder="Product Expiry" name="Pexpiry" value="<%=rs1.getString(4) %>"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>PRODUCT PIC:</td>
    <td><input type="file" placeholder="Product Pic" name="Ppic" value="<%=rs1.getString(5) %>" readonly=readonly/></td>
    <td>&nbsp;</td>
  </tr>
</table></br></br>
<input type="submit" value="UPDATE" />
</form>
<% } %>
<% } %>
<a href="adminlogin.jsp">Logout here </a>
 	  </center>
   

  
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
              <li><a href="www.facebook.com" class="normaltip"><img src="images/icon1.gif" alt=""></a></li>
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
