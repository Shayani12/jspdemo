<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation Title</title>
	The student is confirmed: ${param.firstName} ${param.lastName}
	Country is ${param.country}
	
	Favourite programming language: ${param.favoriteLanguage}
	
	Favourite programming practiced language:
	<ul>
		<% 
		String[] langs=request.getParameterValues("favoriteLanguageCheck");
		if(langs !=null){
		for(String tempLan: langs){
		out.println("<li>"+tempLan+"</li>");
		}
		}
		else{
			out.println("Not selected anything");
		}
		
		%>
	</ul>
</head>
<body>

</body>
</html>