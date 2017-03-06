<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Here</title>
        
<script language="javascript">
function validate(objForm){
if(objForm.uname.value.length==0){
alert("Please enter Username!");
objForm.uname.focus();
return false;
}

if(!(isNaN(document.objForm.uname.value)))
{
alert("Username must in character only!");
return false;
}

if(objForm.password.value.length==0){
alert("Please enter Password!");
objForm.password.focus();
return false;
}

if(objForm.cpassword.value.length==0){
alert("confirm password! mismatch");
objForm.cpassword.focus();
return false;
}

if(document.getElementById("password").value!=document.getElementById("cpassword").value)
{
alert("Confirm Password doesnot match!");
document.getElementById("cpassword").focus();
return false;
}

if(objForm.fname.value.length==0){
	alert("Please enter First Name!");
	objForm.fname.focus();
	return false;
	}

	if(!(isNaN(document.objForm.fname.value)))
	{
	alert("First Name  must in character only!");
	objForm.fname.focus();
	return false;
	}

	if(objForm.lname.value.length==0){
		alert("Please enter Last Name!");
		objForm.lname.focus();
		return false;
		}

		if(!(isNaN(document.objForm.lname.value)))
		{
		alert("Last Name In character only!");
		objForm.lname.focus();
		return false;
		}	
	
	
if(objForm.email.value.length==0){
alert("Please enter Email!");
objForm.email.focus();
return false;
}

if (document.objForm.email.value != "")
{
var Temp = document.objForm.email
var AtSym = Temp.value.indExampleOf('@')
var Period = Temp.value.lastIndExampleOf('.')
var Space = Temp.value.indExampleOf(' ')
var Length = Temp.value.length - 1
if ((AtSym < 1) ||
(Period <= AtSym+1) ||
(Period == Length ) ||
(Space != -1))
{
alert("Please enter a valid Email ID!");
document.objForm.email.focus();
return false;
}
}

if(objForm.phoneno.value.length==0){
alert("Please enter Phone!");
objForm.phoneno.focus();
return false;
}


if(objForm.location.value.length==0){
alert("Please enter Location!");
objForm.location.focus();
return false;
}

if(!(isNaN(document.objForm.location.value)))
{
alert("Location has character only!");
objForm.location.focus();
return false;
}

return true;
}
</script>
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
  
<table border="1" cellpadding="2" cellspacing="2" align="center" >
                    
                <tr>
                <td width="600" height="650" align="center">
                
                   <font face="Times New Roman" size="5">Registration Form</font><br />
                   
                 <form action="registerdb.jsp" method="post">
         <table>
         <tr>
      <tr><td>Username:</td><td><input type="text" name="uname"></td> </tr>
      <tr><td>Password:</td><td><input type="password" name="password"></td> </tr>
      <tr><td>Confirm Password:</td><td><input type="password" name="cpassword"></td> </tr>
      <tr><td>First Name:</td><td><input type="text" name="fname"></td> </tr>
      <tr><td>Last Name:</td><td><input type="text" name="lname"></td> </tr>
      <tr><td>Email:</td><td><input type="text" name="email"></td> </tr>
      <tr><td>Phone No.:</td><td><input type="text" name="phoneno"></td> </tr>
      <tr><td>Location:</td><td><input type="text" name="location"></td> </tr>
      </table>  
          
         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <input type="submit" name="submit" value="Submit" /> &emsp;
		  <input type="reset" name="reset"  value="Reset" /><br>
		  
		       
                    </form>
                    
                      <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.jsp"> <img src="Hom.png" width="32" height="32" />Home</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="index.jsp"> <img src="Hom.png" width="32" height="32" />Home</a>
        </c:if></font>
                    
    </body>
     
</html>