<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To do list</title>
</head>
<body>
<!-- Step1: Create HTML form -->
<form action="todo-demo.jsp">
	Add New Item: <input type="text" name="theItem"/>

<input type="submit" value="Submit"/>
</form>
<br>

Item entered: <%= request.getParameter("theItem") %>
<!-- Step2: Add new item  -->
<%

List<String> items =(List<String>)session.getAttribute("myTodoList");

if(items == null){
items=new ArrayList<String>();
session.setAttribute("myTodoList", items);
}

//see if there is form data to add
String theItem = request.getParameter("theItem");
if(theItem !=null)
{
items.add(theItem);
}
%>
<!-- Step3: Display all to do lists -->
<hr>
<b>TO do list items: </b> <br/>

<ol>

	<%for(String temp:items){
out.println("<li>"+temp+"</li>");
}
%>
</ol>
</body>
</html>