<%@ page import ="java.sql.*" %> 
<%@ page import ="javax.sql.*" %> 

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from registration where email = '"+email+"';");
if(rs.next()){
	if(rs.getString("password").equals(password)){
		response.sendRedirect("http://localhost:8080/logged_in.html");
	}
	else{
		request.setAttribute("error","Invalid password");
	}
}
else{
	response.sendRedirect("signupredirect.jsp");
}
%>
