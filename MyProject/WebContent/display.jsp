<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html> 
<html>
    <head>
        <title>Available Users</title>
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
    </head>
    
    <style>
table {
    border-collapse: collapse;
    width: 70%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4286f4;
    color: white;
}
</style>
    <body bgcolor="#dbfaff">
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/mindproject"
                           user="root"  password="root"/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from registerdata;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>Registered Data Record</caption>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Phone No.</th>
                    <th>Location</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.first_name}"/></td>
                        <td><c:out value="${row.Last_name}"/></td>
                        <td><c:out value="${row.Email}"/></td>
                        <td><c:out value="${row.phone_no}"/></td>
                        <td><c:out value="${row.Location}"/></td>
                        
                        <td><a href="update.jsp?uname=<c:out value="${row.username}"/>">Edit</a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?uname=<c:out value="${row.username}"/>')">Delete </a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="index.jsp">  <img src="Hom.png" width="32" height="32" /> Home</a>
    </center>
</body>
</html>