<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
	
	<!doctype html>
		<html lang="en">
		  <head>
		    <!-- Required meta tags -->
		    <meta charset="utf-8">
		    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		    <!-- Bootstrap CSS -->
		    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		
		    <title>Add employee</title>
		 </head>
		 
		  <body>
		   
				<h1 class="text-center">ENTER EMPLOYEE DETAILS HERE</h1>
							
				<div class="container">	
								
					<form action="empHandler" method="post">
					
						<div class="form-group">
						    <label for="exampleInputEmail1">Employee Name</label>
						    <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" 
						    placeholder="Enter Employee name">
				  		</div>
				  	
				  	
					  	<div class="form-group">
						    <label for="exampleInputPassword1">City</label>
						    <input type="text" name="city" class="form-control" id="exampleInputPassword1" 
						    placeholder="Enter Employee city name">
					  	</div>
				  
					  	<div class="form-group">
						    <label for="exampleInputPassword1">Salary</label>
						    <input type="text" name="salary" class="form-control" id="exampleInputPassword1" 
						    placeholder="Enter Employee salary">
					 	 </div>
				  
						 <div class="text-center">
						  <a type="submit" class="btn btn-secondary" href="${pageContext.request.contextPath }">Back</a>
						  <button type="submit" class="btn btn-primary">Submit</button>
						 </div>
						 
					</form>
		
			</div>
			
			
		    <!-- Optional JavaScript -->
		    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
		    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		    
		    
		  </body>
		  
		</html>
</body>
</html>