<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Information</title>
    </head>
    
    <style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}


input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

input[type=reset] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=reset]:hover {
    background-color: #45a049;
}





div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
    
    
    
    
    
    <body bgcolor="#dbfaff">
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/mindproject"
                           user="root"  password="root"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from registerdata where username=?;
            <sql:param value="${param.uname}" />
        </sql:query>
        
        <table border="1" cellpadding="2" cellspacing="2" align="center" >
                    
                <tr>
                <td width="600" height="500" align="center">
                    <h2> <font face="Times New Roman">Edit Information</font> </h2><br>
        
        
        <form action="updatedb.jsp" method="post">
             
               <c:forEach var="row" items="${result.rows}">
             
          	 <input type="hidden"value="${param.uname}" name="uname"/> 
          	 
          	  <table>
         <tr>
        <input type="hidden"value="${param.uname}" name="uname"/> 
        <tr><td>Password:</td><td><input type="password" value="${row.password}" name="password"></td> </tr>
        <tr><td>Confirm Password:</td><td><input type="password" value="${row.confirmpassword}" name="cpassword"></td> </tr>
        <tr><td>First Name:</td><td><input type="text" value="${row.first_name}" name="fname"></td></tr>
        <tr><td>Last Name:</td><td><input type="text" value="${row.Last_name}" name="lname"></td> </tr>
        <tr><td>Email:</td><td><input type="text" value="${row.Email}" name="email"></td></tr>
        <tr><td>Phone No.:</td><td><input type="text" value="${row.phone_no}" name="phoneno"></td> </tr>
        <tr><td>Location:</td><td><input type="text" value="${row.Location}" name="location"></td> </tr>
          </table>  
          
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <input type="submit" name="Update" value="Submit" /> 
		       
            &emsp;&emsp;
                </c:forEach>
       
           
        </form>
       
    </body>
</html>