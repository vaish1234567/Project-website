<%@ page import ="java.sql.*,java.util.*" %> 
<%@ page import ="javax.sql.*" %> 

<%

String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String org = request.getParameter("org");
String number = request.getParameter("no");
//int mobile = Integer.parseInt(request.getParameter("no"));
String email = request.getParameter("s-email");
String password = request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup","root","root");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from registration where email = '"+email+"'");
if(!(rs.next())){
	int i = stmt.executeUpdate("insert into registration values ('"+fname+"','"+lname+"','"+org+"','"+number+"','"+email+"','"+password+"');");
	if(i>0){
		response.sendRedirect("welcome.jsp");
	}
}
else{	
	//String site =new String("http://localhost:8080/logged_in.html");
	//response.setStatus(response.SC_MOVED_TEMPORARILY);
        //response.setHeader("Location", site); 
	response.sendRedirect("http://localhost:8080/logged_in.html");
}

stmt.close();
con.close();

%>
