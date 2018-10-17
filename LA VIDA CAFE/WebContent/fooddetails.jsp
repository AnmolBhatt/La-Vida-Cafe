<%@page import="com.ibm.dao.*" %>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<title>Deliccio | SEARCH FOOD DETAILS</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script src="js/jquery-1.6.js" ></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Forum_400.font.js"></script>
<script src="js/atooltip.jquery.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<style type="text/css">.slider_bg {behavior:url("js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page5">
<div class="body6">
  <div class="body1">
    <div class="main">
      <!-- header -->
      <header>
        <h1><a href="index.html" id="logo">Deliccio Classic European Cuisine</a></h1>
        <nav>
          <ul id="top_nav">
            <li><a href="index.html"><img src="images/icon_1.gif" alt=""></a></li>
            <li><a href="#"><img src="images/icon_2.gif" alt=""></a></li>
            <li class="end"><a href="contacts.html"><img src="images/icon_3.gif" alt=""></a></li>
          </ul>
        </nav>
        <nav>
          <ul id="menu">
            <li class="active"><a href="foodadmin.jsp">FOOD</a></li>
                <li><a href="cafe.jsp">CAFE</a></li>
                <li><a href="bars.jsp">BARS</a></li>
                <li><a href="pubs.jsp">PUBS</a></li>
                <li><a href="contact.jsp">Contacts</a></li>
          </ul>
        </nav>
      </header>
      <!-- / header -->
      <!-- content -->
      <article id="content">
        <div class="wrap">
          <div class="box">
            <div>
              <h2 class="letter_spacing">FOOD DETAILS <span>SEARCH</span></h2>
              <form id="ContactForm" method="post" action="fooddetails.jsp">
                <div>
                  <div class="wrapper"> <span>Product ID: </span>
                    <input type="text" class="input" name="PID" >
                  </div>
                  <input type="submit" class="button1" value="SEARCH"> </div>
              </form>
            </div>
          </div>
        </div>
      </article>
    </div>
  </div>
</div>
<center>
<%
						if(request.getParameter("PID")!=null)
						{
							int PID=Integer.parseInt(request.getParameter("PID"));
							String sql="select * from food where PID=?";
							prodao obj=new prodao();
							ResultSet rs=obj.FetchDataById(sql, PID);
							
							out.println("<table border=1><tr>");
							out.println("<td>PID</td>");
							out.println("<td>Pname</td>");
							out.println("<td>Pprice</td>");
							out.println("<td>Pexpiry</td>");
							out.println("<td>Ppic</td>");
							while(rs.next())
							{
								  out.println("<tr>");
								  out.println("<td>"+rs.getInt(1)+"</td>");
								  out.println("<td>"+rs.getString(2)+"</td>");
								  out.println("<td>"+rs.getString(3)+"</td>");
								  out.println("<td>"+rs.getString(4)+"</td>");
								  out.println("<td><img src='profilepic/"+rs.getString(5)+"' height=100 width=100 /></td>");
							}
							out.println("</table>");
						}
					%>
					<a href="adminlogin.jsp">Logout here</a>
					</center>>

<div class="body2">
  <div class="main">
    <article id="content2">
      <div class="wrapper">
        <section class="pad_left1">
          <div class="wrapper">
            <div class="cols">
              <h2>Our Contacts</h2>
            </div>
            <div class="col3 pad_left1">
              <h2>Miscellaneous Info</h2>
            </div>
          </div>
          <div class="line1">
            <div class="wrapper line2">
              <div class="cols">
                <div class="wrapper pad_bot1">
                  <p>Sed ut perspiciatis unde omnis iunatus doloremque laudantium.</p>
                  <p class="address"> Marmora Road, Glasgow, D04 89GR.<br>
                    <span>Freephone:</span> +1 800 559 6580<br>
                    <span>Telephone:</span> +1 959 603 6035<br>
                    <span>E-mail:</span> <a href="#">mail@demolink.org</a> </p>
                </div>
              </div>
              <div class="col3 pad_left1">
                <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error. </div>
            </div>
          </div>
        </section>
      </div>
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
