<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
//read form data
String favBook = request.getParameter("favBook");

//create the cookie
Cookie theCokie = new Cookie("myApp.favBook", favBook);

theCokie.setMaxAge(60*60*24*365);

//send cookie to browser
response.addCookie(theCokie);
%>


Thanks! We our fav language to ${param.favBook};
<br><br>

<a href="cookies-homepage.jsp">Return</a>
</body>
</html>