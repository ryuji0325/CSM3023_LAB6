<%-- 
    Document   : SampleInsertionRecord
    Created on : 29 May 2024, 10:21:30 am
    Author     : amirf
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lab 6 - Task 1 - Sample Insertion records into MySQL through JSP's page</h1>

        <%
            int result;

            //step 1: Load JDBC driver...
            Class.forName("com.mysql.jdbc.Driver");
            out.println("Step 1: MySQL driver loaded...!");
         %>
         <br><!-- comment -->
         <%
            //step 2: Establish the connection
            String myURL = "jdbc:mysql://localhost/csf31071";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            out.println("Step 2: Database is connected...!");
         %>
         <br>
         <%
            //Step 3: Create a PreparedStatement object...
            out.println("Step 3: Prepared Statement created..!");

            //Prepared SQL Query as a String..
            String sInsertQry = "INSERT INTO FirstTable VALUE(?)";

            //Call method preparedStatement
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
     
           %>
           <br>
           
           <%
            //Assign each value to respective columns for Book's table..(C - Create)
            out.println("Step 4: Perform insertion of record...!");
            String name = "Welcome to access MySQL database with JSP. ...!";
            myPS.setString(1, name);

            result = myPS.executeUpdate();

            if (result > 0) {
        %>
        <br><!-- comment -->
        <%
                out.println("Step 5: Close database connection..!");

                out.println(" ");
                out.println("Database connection is closed...!");

                out.print("<p>" + "The record: (" + name + ") is successfully created..!" + "</p>");
            }
            //Step 5: Close database connection...!
            myConnection.close();
        %>


    </body>
</html>
