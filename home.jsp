<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
%> 
<html>
<head>
		<base href="<%=basePath%>">
				<script src="<%=path%>/bootstrap/js/jquery-1.11.2.min.js"></script>
				<link rel="stylesheet"href="<%=path%>/bootstrap/css/bootstrap.min.css">
				<script src="<%=path%>/bootstrap/js/bootstrap.min.js"></script>
				<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
				<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
				<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  				<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  				<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-2.0.2.js"></script>
			    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
			    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-blue-grey.css">
				<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
				<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
				<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-animate.min.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-aria.min.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/angular_material/0.9.4/angular-material.min.js"></script>
	    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.9.4/angular-material.min.css">
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=RobotoDraft:300,400,500,700,400italic">

<title>SHIFTMobility</title>
	<style>
	.mySlides {display:none}
	
			.w3-card-16{
		float: right;
        width: 345px;
        height: 445px;
		margin: 140px 0;
		padding: px;
		margin-right: 0px;
		}
		.w3-card-24{
		float: right;
        width: 400px;
        height: 650px;
		margin: 140px 0;
		padding: px;
		margin-right: 0px;
		}
		#w3-card-16-chg{
		float: right;
        width: 345px;
        height: 400px;
		margin: 140px 0;
		padding: px;
		margin-right: 0px;
		}
		
		

</style>
<script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();
   
});
			function signup(){
				/* alert("hello"); */
			html='';
			html+='<div class="w3-container" id="singnUp">'+
			      '<div class="w3-card-24  w3-hover-shadow w3-animate-zoom">'+
			     '<header class="w3-container w3-light-grey">'+
			       '<h3>Sign Up'+
			       '<span class="w3-closebtn" id="cancelbtn" onclick="cancelEdit()">x</span>'+
			       '</h3>'+
			      '</header><br>'+
				 '<form class="w3-container" >'+
				 '<label >First Name</label>' +
				  '<input class="w3-input" type="text" name="fname" required><br>'+
				  '<label >Last Name</label>'+
			      '<input class="w3-input" type="text" name="lname" ><br>'+
			      '<label >Phone Number</label>'+
			      '<input class="w3-input" type="text" name="phone" ><br>'+
				     '<label >Email</label>'+
				     '<input class="w3-input" type="text" name="email" required><br>'+
				    '<label>Password</label>' +
				    '<input class="w3-input" type="password" name="pwd" required><br>'+
				   ' <label>Required Password</label>'+
					'<input class="w3-input" type="password" id="pwd1" required><br>'+
					'<button class="w3-btn w3-green">Register</button>'+
					'<button class="w3-btn w3-red" style="margin-left: 15px">Cancel</button>'+
				  '</form>'+
				'</div>'+
		'</div>';
		$('#newUser').html(html);
		$("#logIn").hide();
}
			
			function changePwd() {
				html='';
				html+='<div class="w3-container" id="chngPwd" >'+
                
	            '<div class="w3-card-16  w3-hover-shadow w3-animate-zoom" id="w3-card-16-chg" >' +
	               '<header class="w3-container w3-light-grey">'+
				      '<h3>Change Password'+
				     '<span onclick="removebtn()" class="w3-closebtn">x</span>'+
				     '</h3>'+
				'</header><br><br>'+
				'<form class="w3-container" >'+
			       '<label >Old Password</label>'+
				   '<input class="w3-input" type="text" name="oldpwd" required><br>'+
					'<label>New Password</label>'+
					'<input class="w3-input" type="password" id="newpwd" required><br>'+
                     '<label>Confirm Password</label>'+
					'<input class="w3-input" type="password" id="conpwd" required><br>'+
					'<button class="w3-btn w3-green">Change Password</button>'+
	          '</form>'+
          ' </div>'+
     '</div>';
  
				$('#newUser').html(html);
				$("#logIn").hide();	
	}
			function openNav(){
				html='';
				html+='<nav  class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index:5;width:300px; display:none;" id="sideNav">'+
				'<span onclick="closeNav();" class="w3-hover-text-red w3-closebtn">'+
		         '<i class="fa fa-remove"></i>'+
		        '</span>'+ 
				'<br>'+
				  '<div class="w3-container w3-row">'+
				    '<div class="w3-col s4">'+
				      '<img src="<%=path %>/images/img_avatar3.png" class="w3-circle w3-margin-right" style="width:46px">'+
				    '</div>'+
				    '<div class="w3-col s8">'+
				      '<span>Welcome, <strong>TN</strong></span><br>'+
				      '<a href="#" class="w3-hover-none w3-hover-text-red w3-show-inline-block"><i class="fa fa-envelope"></i></a>'+
				      '<a href="#" class="w3-hover-none w3-hover-text-green w3-show-inline-block"><i class="fa fa-user"></i></a>'+
				      '<a href="#" class="w3-hover-none w3-hover-text-blue w3-show-inline-block"><i class="fa fa-cog"></i></a>'+
				    '</div>'+
				  '</div>'+
				  '<hr>'+
				  '<div class="w3-container">'+
				    '<h5>Dashboard</h5>'+
				  '</div>'+
				  '<a href="#" class="w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Overview</a>'+
				  '<a onclick="openMail();" class="w3-padding" style="cursor: pointer;"><i class="fa fa-pencil"></i> New Message</a>'+
				  '<a href="#" class="w3-padding"><i class="fa fa-eye fa-fw"></i>  Views</a>'+
				  '<a href="#" class="w3-padding"><i class="fa fa-users fa-fw"></i>  Traffic</a>'+
				  '<a href="#" class="w3-padding"><i class="fa fa-bullseye fa-fw"></i>  Geo</a>'+
				  '<a href="#" class="w3-padding"><i class="fa fa-diamond fa-fw"></i>  Orders</a>'+
				  '<a href="#" class="w3-padding"><i class="fa fa-bell fa-fw"></i>  News</a>'+
				  '<a href="#" class="w3-padding"><i class="fa fa-bank fa-fw"></i>  General</a>'+
				  '<a href="#" class="w3-padding"><i class="fa fa-history fa-fw"></i>  History</a>'+
		  		  '<a href="#" class="w3-padding"><i class="fa fa-cog fa-fw"></i>  Settings</a>'+
		  		  '<a href="#" class="w3-padding"><i class="fa fa-user"></i>  Log Out</a><br><br>'+
		'</nav>';
		
				$("#newNav").html(html);
				
			}
			  function closeNav() {
				  
				  $("#newNav").hide();
				  location.reload();
			}
			    
			  
			  function newLogIn() {
				  html=''; 
				  html+='<div class="w3-container" id="showLogin">'+
                         '<div class="w3-card-16  w3-hover-shadow w3-animate-zoom">'+
		                  '<header class="w3-container w3-light-grey">'+
					      '<h3>Log In'+
					      '<span onclick="closebtn()" class="w3-closebtn">x</span>'+
					      '</h3>'+
					'</header><br><br>'+
					'<form class="w3-container">'+
					
				     '<label >Email</label>'+
					   '<input class="w3-input" type="text" name="email" required><br>'+
								
						'<label>Password</label>'+
						'<input class="w3-input" type="password" id="pwd" required><br>'+
						'<button class="w3-btn w3-green">Sign In</button>'+
						
						'<span><a  onclick="signup();" data-toggle="tooltip" title="Sign Up!" style="margin-left: 10px; cursor: pointer;">Register</a></span>'+
						'<span><a  onclick="changePwd();" data-toggle="tooltip" title="Change Password!" style="margin-left: 15px; color: red; cursor: pointer;">Forget your password?</a></span>'+
          '<div>'+						
          	'<input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me'+
       	'</div>'+
       '<label style="margin-top: 32px;">Follow us on'+
          	'</label>'+
		'</form>'+
		'<footer class="w3-container w3-light-grey">'+
		 ' <h5 style="display: flex;">'+
		 '<a href="https:www.facebook.com" data-toggle="tooltip" title="Share facebook!"><img style="width: 35px" class="img-responsive" src="<%=path%>/images/facebook.png" alt="socialSite"/></a>'+
		  '<a href="https:www.instagram.com" data-toggle="tooltip" title="Share instagram!"><img style="width: 35px; margin-left: 22px;" class="img-responsive" src="<%=path%>/images/instagram.png" alt="socialSite"/></a>'+
		'<a href="https:www.twitter.com" data-toggle="tooltip" title="Share twitter!"><img style="width: 35px; margin-left: 22px;" class="img-responsive" src="<%=path%>/images/twitter.png" alt="socialSite"/></a>'+
		 '<a href="https:www.googl+.com" data-toggle="tooltip" title="Share googl+!"><img style="width: 35px; margin-left: 22px;" class="img-responsive" src="<%=path%>/images/googl+.png" alt="socialSite"/></a>'+ 
		  '</h5>'+
		 '</footer>'+
	  '</div>'+
	 '</div>';	  
	            
				  $("#logIn").html(html);	
				  $('#content').hide();
				  
			}
			   function cancelEdit() {
				$("#singnUp").hide();
				$("#logIn").show();
			}
			   
			   function removebtn() {
				   
					$("#chngPwd").hide();
					$("#logIn").show();
				}
			   
			   function closebtn() {
					$("#showLogin").hide();
					$('#content').show();
				}
			   
			   function myFunction(id) {
				    var x = document.getElementById(id);
				    if (x.className.indexOf("w3-show") == -1) {
				        x.className += " w3-show";
				        x.previousElementSibling.className += " w3-theme-d1";
				    } else {
				        x.className = x.className.replace("w3-show", "");
				        x.previousElementSibling.className =
				        x.previousElementSibling.className.replace(" w3-theme-d1", "");
				    }
				}
			   
			   var slideIndex = 1;
			   showDivs(slideIndex);

			   function plusDivs(n) {
			     showDivs(slideIndex += n);
			   }

			   function currentDiv(n) {
			     showDivs(slideIndex = n);
			   }

			   function showDivs(n) {
			     var i;
			     var x = document.getElementsByClassName("mySlides");
			     var dots = document.getElementsByClassName("demo");
			     if (n > x.length) {slideIndex = 1}
			     if (n < 1) {slideIndex = x.length}
			     for (i = 0; i < x.length; i++) {
			        x[i].style.display = "none";
			     }
			     for (i = 0; i < dots.length; i++) {
			        dots[i].className = dots[i].className.replace(" w3-red", "");
			     }
			     x[slideIndex-1].style.display = "block";
			     dots[slideIndex-1].className += " w3-red";
			   }
			    
</script>
</head>
	<body >
	
	<div class="navbar navbar-default navbar-fixed-top" style="background:#008CBA;">
	   <div class="cantainer">
         
   <div class="navbar-header">
   <h1>
     <a href="myCar.png"><img class="img-responsive w3-animate-left" src="<%=path%>/images/shopLite.png" style="height: 60px;  margin-left: 30px;" alt="myCar"/></a>
  </h1>
  
   </div>
			  
			                                                                                              
			   <!-- <div>
			    <span><a class="navbar-brand" onclick="newLogIn();" style="color: white; float: right;margin-top: 35px;margin-right: 58px; cursor: pointer;">Log IN</a></span>
			  </div> -->
      </div>
      
      			<div>
                 <ul class="w3-navbar w3-card-8 w3-hover-shadow" style="margin-top: 85px; background-color: #4d636f">
                     <li><a class="w3-hover-red w3-hover-shadow" onclick="openNav();" href="#" style="color: white; ">&#9776;</a>
                     </li>
                     <li><a class="w3-hover-red w3-hover-shadow" href="#" style="color: white">Home</a></li>
	                 <li><a class="w3-hover-red w3-hover-shadow" href="#" style="color: white">News</a></li>
	                 <li><a class="w3-hover-red w3-hover-shadow" href="#" style="color: white">Sport</a></li>
	                 <li><a class="w3-hover-red w3-hover-shadow" href="#" style="color: white">Life</a></li>
				     <li><a class="w3-hover-red w3-hover-shadow" href="#" style="color: white">Tech</a></li>
				     <li><a class="w3-hover-red w3-hover-shadow" href="#" style="color: white">Money</a></li>
				     <li class="w3-dropdown-hover w3-hover-red">
					    <a class="w3-hover-red w3-hover-shadow" href="#" style="color: white">more...</a>
					    <div class="w3-dropdown-content w3-white w3-card-2 w3-hover-shadow">
					      <a class="w3-hover-red w3-hover-shadow"href="#">Cricket</a>
					      <a class="w3-hover-red w3-hover-shadow"href="#">Movie</a>
					      <a class="w3-hover-red w3-hover-shadow" href="#">Rio Olympics</a>
					      </div>
					      </li>
					      <li class="w3-navitem">
						    <input type="text" class="w3-input w3-border-0 w3-padding-0" placeholder="Search..." style="color: black">
						  </li>
						  <li class="w3-right">
						  <span><a class="navbar-brand w3-hover-red w3-hover-shadow " onclick="newLogIn();" style="color: white;cursor: pointer;">Log In</a></span></li>
		        </ul>
          </div>
           
          </div>
	  
          <div id="newNav"></div>
        <div id="newUser"></div>
        <div  id="logIn" style="width: 30%;float: right;" ></div>
       
       <div style="margin-top: 10%;" id="content" >
			       <div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
			  <!-- The Grid -->
			  <div class="w3-row ">
			  <div class="w3-col w3-container" style="width:20%">
			  <ul class="w3-ul w3-card-2 w3-hover-shadow w3-animate-zoom" style="margin-top: 10px; height: 140px;">
			  <span onclick="this.parentElement.style.display='none'" class="w3-hover-text-grey w3-closebtn">
		          <i class="fa fa-remove"></i>
		        </span>
			      <li class="w3-padding-16">
			      <span>ADS</span>
			      <div class="w3-panel w3-leftbar w3-border-blue">
						  <p><i>"Make it as simple as possible, but not simpler."</i></p>
						  <p>TN</p>
						</div>
				</li>
				</ul>
				<ul class="w3-ul w3-card-2 w3-hover-shadow w3-animate-zoom" style="margin-top: 10px; height: 140px;">
				 <span onclick="this.parentElement.style.display='none'" class="w3-hover-text-grey w3-closebtn">
		          <i class="fa fa-remove"></i>
		        </span>
			      <li class="w3-padding-16">
			      <span>ADS</span>
			      <div class="w3-panel w3-leftbar w3-border-red">
						  <p><i>"Make it as simple as possible, but not simpler."</i></p>
						  <p>TN</p></div>
					  </li>
				</ul>
				<ul class="w3-ul w3-card-2 w3-hover-shadow w3-animate-zoom" style="margin-top: 10px; height: 140px;">
				 <span onclick="this.parentElement.style.display='none'" class="w3-hover-text-grey w3-closebtn">
		          <i class="fa fa-remove"></i>
		        </span>
			      <li class="w3-padding-16">
			      <span>ADS</span>
			      <div class="w3-panel w3-leftbar w3-border-green">
						  <p><i>"Make it as simple as possible, but not simpler."</i></p>
						  <p>TN</p></div>
					  </li>
				</ul>
				<ul class="w3-ul w3-card-2 w3-hover-shadow w3-animate-zoom" style="margin-top: 10px; height: 140px;">
				<span onclick="this.parentElement.style.display='none'" class="w3-hover-text-grey w3-closebtn">
		          <i class="fa fa-remove"></i>
		        </span>
			      <li class="w3-padding-16">
			      <span>ADS</span>
			      <div class="w3-panel w3-leftbar w3-border-orange">
						  <p><i>"Make it as simple as possible, but not simpler."</i></p>
						  <p>TN</p></div>
					  </li>
				</ul>
			  </div>
			    <div class="w3-col w3-container" style="width:60%">
			    <div class="w3-card-2 w3-round w3-white" style="margin-top: 10px;">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">Social Media</h6>
              <p contenteditable="true" class="w3-border w3-padding">Status: Feeling Blue</p>
              <button type="button" class="w3-btn w3-theme"><i class="fa fa-pencil"></i>  Post</button>
            </div>
          </div><br>
			       <ul class="w3-ul w3-card-2" >
			      <li class="w3-padding-16">
					    <!-- <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					  <li class="w3-padding-16">
					    <!-- <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					   <li class="w3-padding-16">
					   <!--  <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					  <li class="w3-padding-16">
					   <!--  <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					   <li class="w3-padding-16">
					   <!--  <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
			            <li class="w3-padding-16">
					    <!-- <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png" class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					   <li class="w3-padding-16">
					   <!--  <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png" class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					  <li class="w3-padding-16">
					    <!-- <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					   <li class="w3-padding-16">
					   <!--  <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
					  <li class="w3-padding-16">
					   <!--  <span onclick="this.parentElement.style.display='none'"
					    class="w3-closebtn w3-padding w3-margin-right w3-medium">x</span> -->
					    <img src="<%=path%>/images/img_avatar3.png"  class="w3-left w3-circle w3-margin-right" style="width:50px">
					    <span class="w3-large">News</span><br>
					    <span>Sport</span>
					  </li>
			       </ul><br>
			       <div class="w3-container"></div>
			       <div class="w3-content ">
			       <img class="mySlides" src="<%=path %>/images/img_lights.png" style="width: 100%">
			       <img class="mySlides" src="<%=path %>/images/img_nature.png" style="width: 100%">
			       <img class="mySlides" src="<%=path %>/images/img_mountains.png" style="width: 100%">
			       <img class="mySlides" src="<%=path %>/images/img_forest.png" style="width: 100%">
			       <img class="mySlides" src="<%=path %>/images/img_nature.png" style="width: 100%">
			       <img class="mySlides" src="<%=path %>/images/img_fjords.png" style="width: 100%">
			       </div>
			       <div class="w3-center">
			       <div class="w3-section">
			       <button class="w3-btn" onclick="plusDivs(-1)">&#10094; Prev</button>
			       <button class="w3-btn" onclick="plusDivs(1)">Next &#10095;</button>
			       </div>
			       	<button class="w3-btn demo" onclick="currentDiv(1)">1</button>
					<button class="w3-btn demo" onclick="currentDiv(2)">2</button>
					<button class="w3-btn demo" onclick="currentDiv(3)">3</button>
					<button class="w3-btn demo" onclick="currentDiv(4)">4</button>
					<button class="w3-btn demo" onclick="currentDiv(5)">5</button>
					<button class="w3-btn demo" onclick="currentDiv(6)">6</button>
			       </div>
			       
			    </div>
			    <div class="w3-col w3-container" style="width:20%; margin-top: 10px;">
			     <div class="w3-card-2 w3-round">
        <div class="w3-accordion w3-white">
          <button onclick="myFunction('Demo1')" class="w3-btn-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i>Groups</button>
          <div id="Demo1" class="w3-accordion-content w3-container">
            <p>Some text..</p>
          </div>
          <button onclick="myFunction('Demo2')" class="w3-btn-block w3-theme-l1 w3-left-align"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i>Events</button>
          <div id="Demo2" class="w3-accordion-content w3-container">
            <p>Some other text..</p>
          </div>
          <button onclick="myFunction('Demo3')" class="w3-btn-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw w3-margin-right"></i>Photos</button>
          <div id="Demo3" class="w3-accordion-content w3-container">
         <div class="w3-row-padding">
         <br>
           <div class="w3-half">
             <img src="<%=path%>/images/img_lights.png" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="<%=path%>/images/img_nature.png" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="<%=path%>/images/img_mountains.png" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="<%=path%>/images/img_forest.png" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="<%=path%>/images/img_nature.png" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="<%=path%>/images/img_fjords.png" style="width:100%" class="w3-margin-bottom">
           </div>
         </div>
          </div>
        </div>
      </div><br>
      <div class="w3-card-2 w3-round w3-white w3-center w3-hover-shadow w3-animate-zoom">
        <div class="w3-container">
          <p>Friend Request</p>
          <img src="<%=path%>/images/img_avatar3.png" alt="Avatar" style="width:50%"><br><br>
          <span>TN</span>
          <div class="w3-row w3-opacity">
            <div class="w3-half">
              <button class="w3-btn w3-green w3-btn-block w3-section" title="Accept"><i class="fa fa-check"></i></button>
            </div>
            <div class="w3-half">
              <button class="w3-btn w3-red w3-btn-block w3-section" title="Decline"><i class="fa fa-remove"></i></button>
            </div>
          </div>
        </div>
      </div><br>
      <div class="w3-card-2 w3-round w3-white w3-padding-32 w3-center w3-hover-shadow w3-animate-zoom">
        <p><i class="fa fa-bug w3-xxlarge"></i></p>
      </div><br>
      <div class="w3-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-hover-text-grey w3-closebtn">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Hey!</strong></p>
        <p>People are looking at your profile. Find out who.</p>
      </div>
    </div>
			 </div>
			 </div>
      </div><br><br>
     <!-- <footer class="w3-container w3-black">
     <h5></h5>
     <p>&copy; Copyright @ TN
      
     </p>
</footer> -->
 </body>
 
</html>