<%-- 
    Document   : homePage
    Created on : Sep 27, 2018, 10:24:16 PM
    Author     : kaveesha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
		<form action="Validator" method="POST">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
					<input type="hidden" name="tokentext" id="tokentext"/>
                </form>
			</div>
		</div>
	</div>
</div>
			<script src="jquery.min.js"></script>
			<script src="bootstrap.min.js"></script>
			<script>
				$.ajax({
					type: 'GET',
					dataType: 'json',
					url: '/SynchronizerTokenPattern/Validator',
					async: false,
					contentType: "application/json",
					success: function (data) {
						var response = JSON.stringify(data);
						console.log("kkkkkkkkkkkkkkkkkkkkkkkk: " + data.csrfToken);
						//var response = jQuery.parseJSON(data);
						console.log("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh  " + response[0].csrfToken);
						alert("Your Token data : " + response);
						$("#tokentext").val(data.csrfToken);
					},
					error: function (xhr, status, error) {
						alert(status);
					}
				});
			</script>
</body>

</html>
