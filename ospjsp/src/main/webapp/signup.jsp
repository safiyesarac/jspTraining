<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post">

				<input type="text" name="name" placeholder="Enter name " required>
				<input type="email" name="email" placeholder="Enter email " required>
				<input type="number" name="mobilenumber"
					placeholder="enter mobile number" required> <select>
					<option value="what is your first car?">what is your first
						car?</option>
					<option value="what is the name of your first pet?">what
						is the name of your first pet?</option>
					<option value="what elementary school did you attend?">what
						elementary school did you attend?</option>
					<option value="what is the name of the town where you were born?">what
						is the name of the town where you were born?</option>


				</select> 
				<input type="text" name="answer" placeholder="enter answer"required> 
				<input type="password" name="password" placeholder="enter password" required> 
				<input type="submit" value="signup">

			</form>

			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
<%
String msg =request.getParameter("msg");
if("valid".equals(msg)){
%>

<h1>Successfully Registered</h1>
<% 
}

else if("notvalid".equals(msg)){
%>

			<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>