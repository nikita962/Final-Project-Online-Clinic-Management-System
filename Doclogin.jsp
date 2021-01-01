<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>patient login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.css">
     <link rel="stylesheet" href="plog.css">
     <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
		<style>
		body {font-family: "Lato", sans-serif;
		background-image: url("img2.jpg");
  background-repeat: no-repeat, repeat;
  background-size: 1500px 700px;}
		

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
<body >
  <!--patient login page--><br><br><br>
 		<center><div class="logo margin-top-30">
				<h2> <b>Doctor Login</b></h2><br>
		</div></center>
		<div class="sidebar">
  <a href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#services"><i class="fa fa-fw fa-wrench"></i> About us</a>
  <a href="contactus.jsp"><i class="fa fa-fw fa-envelope"></i> Contact us</a>
  <a href="admin-login.jsp"><i class="fa fa-fw fa-user"></i> Admin Login</a>
   <a href="Doclogin.jsp"><i class="fa fa-fw fa-user"></i> Doctor Login</a>
    <a href="plogin.jsp"><i class="fa fa-fw fa-user"></i> Patient Login</a>
  
</div>

    <div class="ui container login">
        <div class="ui red centered card">
   
                 <form class="ui  form log" method="post" action="/HospDBMS/Doclogin">
                         <div class="field">
                         <div  class="sixteen wide field">  
              <br>
                           <label class="header">User Name</label>
                           <input type="text" name="uname" placeholder="username">
                         </div>
                        </div>
                         <div class="field">
                        <div  class="sixteen wide field">   
                           <label class="ui header">Password</label>
                           <input type="password" name="pwd" placeholder="password">
                         </div>
                         </div>
                         <div class="field">
                          <!-- <p class="header">Don't have an account?
                          <a href="newuser.html" id="field1">Create account</a></p> -->
                             <b>   <font color="red"> ${error}</font> </b>
                         </div>
                        <button type="submit" class="btn btn-primary pull-right" name="submit">
									Login <i class="fa fa-arrow-circle-right"></i>
								</button>
                       </form>
                       
         </div>
     </div>     
</body>
</html>