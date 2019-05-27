<%-- 
    Document   : excluir_aluno
    Created on : 26/05/2019, 22:27:23
    Author     : Rafael Sousa
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
       <% try {  
        // Create a statement  
        Statement stmt = connection.createStatement();  
       
        // Prepare a statement to insert a record  
        String sql = "DELETE FROM my_table WHERE col_string='a string'";  
       
        // Execute the delete statement  
        int deleteCount = stmt.executeUpdate(sql);  
        // deleteCount contains the number of deleted rows  
       
        // Use a prepared statement to delete  
       
        // Prepare a statement to delete a record  
        sql = "DELETE FROM my_table WHERE col_string=?";  
        PreparedStatement pstmt = connection.prepareStatement(sql);  
        // Set the value  
        pstmt.setString(1, "a string");  
        deleteCount = pstmt.executeUpdate();  
        System.err.println(e.getMessage()); 
} catch (SQLException e) {  
    }%>
    
    </body>
</html>
