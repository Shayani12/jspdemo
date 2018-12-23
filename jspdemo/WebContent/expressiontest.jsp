<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.infosys.jspwb.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Converting a string to uppercase: <%= new String("salman").toUpperCase() %>

Is 75 less than 69? <%= 75<69 %>

<% 
for(int i=1; i<5; i++)
{
	//for printing on the screen
	out.println("Here this is");
			//for printing on the console
}

%>

<%! 
String makeLower(String str){
	return str.toLowerCase();
}
%>

Lower case of SALMAN is: <%= makeLower("SALMAN") %>

Lets have some fun <%= FunUtils.makeItLower("Sal Sal Sal") %>
</body>
</html>