<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Add New Employee</h1>  
	<f:form method="post" action="save">
		 <table >    
         <tr>    
          <td>Name : </td>   
          <td><f:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>Salary :</td>    
          <td><f:input path="salary" /></td>  
         </tr>   
         <tr>    
          <td>Designation :</td>    
          <td><f:input path="desgination" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
	</f:form>   
</body>
</html>