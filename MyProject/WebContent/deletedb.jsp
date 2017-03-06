<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete User</title>
    </head>
    
    
        
    <style>
    
    a:link, a:visited {
    background-color:#4CAF50;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color:#4CAF50;
}
    
    </style>
    
    
    
    <body bgcolor="#dbfaff">
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/mindproject"
                           user="root"  password="root"/>
        <sql:update dataSource="${dbsource}" var="count">
            DELETE FROM registerdata
            WHERE username='${param.uname}'
        </sql:update>
        
        
         <table border="1" cellpadding="2" cellspacing="2" align="center">
                     
                <tr>
                <td width="800" height="400" align="center">
             
        
        
        
        <c:if test="${count>=1}">
           <i></i> <font size="5" color='black'> Your Information Deleted Successfully.</i></font>
             <p>
           
              <a href="index.jsp">Home</a></p> 
        </c:if>
    </body>