<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Training portal</title>
</head>
<body>

<h3>Training portal

<!-- read the favourite book -->
<%
// the default if there are no cookies
String favBook="Harry Potter";

//get the cookies from the browser requrest
Cookie[] theCookie = request.getCookies();

//find our fav book
if(theCookie!=null){
for(Cookie temp: theCookie)
{
	
	if("myapp.favBook".equals(temp.getName())){
	favBook = temp.getValue();
	break;
	
}
}
}
%>

<!-- now show a personalized page -->

<!-- show new books for this language -->

<h4>Books for <%=favBook %></h4>
<ul>
	<li>bkah bakkh</li>
	<li>bkah bakkh</li>
	<li>bkah bakkh</li>
	<li>bkah bakkh</li>
	<li>bkah bakkh</li>
	
</ul>

<hr>
<a href="cookies-personalize.html">Personalize this page</a>

</body>
</html>