<!DOCTYPE html>
<html>
<head>
<title>Search Bill</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.4.1/milligram.css">
</head>
<body>
<h1>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%
    //JDBC Search
            String day =request.getParameter("day");
            String mon =request.getParameter("month");
            String year = request.getParameter("year"); 
             try
	        {
                      Connection con=null;
                      con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","57241516");
                      String sql = "select billno,customer_name,inccost from IncomeBills where day='"+day+"' and mon='"+mon+"' and year='"+year+"' ";    
                      PreparedStatement ps = con.prepareStatement(sql);
                      ResultSet rs = ps.executeQuery();
                      while(rs.next())
                      {
                            out.println("Bill no:" + rs.getString(1)+"<br> Customer Name: "+rs.getString(2)+"<br> Amount Recieved: "+rs.getString(3));
                      }
             }
	     catch(Exception e)
             {
                    out.println(e);
	        }
      %></h1>
      <h2>To Move Home click the button below</h2>
      <br>
      <form action="Home.jsp">
          <input type="submit" id="home" value="Go to Home" />
      </form>
      <h2>To logout click the button below</h2>
      <br>
      <form action="../Login">
          <input type="submit" value="Logout" />
      </form>
</body>
</html>