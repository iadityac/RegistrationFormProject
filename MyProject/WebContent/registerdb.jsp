<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<!DOCTYPE html>
<html>
    <head>
        <title>Register Here</title>
    </head>
    <body>
        
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/mindproject"
                           user="root"  password="root"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO registerdata (username,password,confirmpassword,first_name,Last_name,Email,phone_no,Location) VALUES (?,?,?,?,?,?,?,?);
            <sql:param value="${param.uname}" />
            <sql:param value="${param.password}" />
            <sql:param value="${param.cpassword}" />
            <sql:param value="${param.fname}" />
            <sql:param value="${param.lname}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.phoneno}" />
            <sql:param value="${param.location}" />
                                 
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data register
            successfully.</font>
 
            <c:redirect url="register.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data register
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>