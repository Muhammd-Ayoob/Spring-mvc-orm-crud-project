<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
	
	<!doctype html>
		<html lang="en">
		  <head>
			    <!-- Required meta tags -->
			    <meta charset="utf-8">
			    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			
			    <!-- Bootstrap CSS -->
			    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
			
			    <title>Employee crud</title>
		 </head>
		 
		 
		  <body>
		  
		  		<h1 class="text-center">EMPLOYEE CRUD</h1>
		  
		   		<div class="container">
		   		
					<table class="table">
					
					  <thead class="thead-dark">
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">NAME</th>
					      <th scope="col">CITY</th>
					      <th scope="col">SALARY</th>
					      <th scope="col">ACTION</th>
					    </tr>
					  </thead>
					  
				  <tbody>
						<c:forEach items="${employees }" var="employee">
				    		<tr>
							      <th scope="row">${employee.id}</th>
							      <td>${employee.name}</td>
							      <td>${employee.city }</td>
							      <td class="font-weight-bold"> &#8377;${employee.salary}</td>
							      <td>
					      	   	  <a href="delete/${ employee.id}"><i class="fas fa-trash text-danger" style="font-size:25px"></i></a>
					      	
					      	      <a href="update/${ employee.id}"><i class="fas fa-edit" style="font-size:25px"></i></a>
					     		 </td>
				   			 </tr>
				  		 </c:forEach>
				  </tbody>
				  
			</table>
			
			<div class="container text-center">
				<a href="add" class="btn btn-outline-success" >Add Employee</a>
			</div>

	
	</div>
			
		    <!-- Optional JavaScript -->
		    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
		    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		  </body>
		</html>
</body>
</html>