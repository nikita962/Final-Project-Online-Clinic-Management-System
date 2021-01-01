<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>S.U.C.C.E.S.S</title>
<style>
body {font-family: "Lato", sans-serif;
		background-image: url("img1.jpg");
  background-repeat: no-repeat, repeat;
  background-size: 1500px 700px;}
  .button {
  background-color: 	#800000; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
  .button4 {border-radius: 12px;}
		

.sidebar {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 17px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}
		</style>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("uname");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_database","root","Nikita@30"); 
Statement st= con.createStatement(); 
String sql = "delete from patients_info where name="+name;

try{

 st.executeUpdate(sql);
 
} catch (SQLException e) {
  e.printStackTrace();
}
%>
<br><br>
<div class="sidebar">
  <a href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#services"><i class="fa fa-fw fa-wrench"></i> About us</a>
  <a href="contactus.jsp"><i class="fa fa-fw fa-envelope"></i> Contact us</a>
  <a href="admin-login.jsp"><i class="fa fa-fw fa-user"></i> Admin Login</a>
   <a href="Doclogin.jsp"><i class="fa fa-fw fa-user"></i> Doctor Login</a>
    <a href="plogin.jsp"><i class="fa fa-fw fa-user"></i> Patient Login</a>
  
</div>
<b><center><h1>Successfully Deleted</h1></center></b><br>
<center><a href="mangptnts.jsp"><button value="Back" class="button button4">Back</button></a></center>
</body>
</html>