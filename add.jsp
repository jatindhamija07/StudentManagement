<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Details</title>
<%@include file="allCSS.jsp"%>
</head>
<body class="bg-light">
	<%@include file="navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Student</p>

						<c:if test="${not empty SucessMesg}">
							<p class="text-center text-success">${SucessMesg }</p>
							<c:remove var="SucessMesg" />
						</c:if>

						<c:if test="${not empty ErrorMesg}">
							<p class="text-center text-success">${ErrorMesg}</p>
							<c:remove var="ErrorMesg" />
						</c:if>

						<form action="Register" method="post" >
							<div class="mb-3">
								<label class="form-label">Full Name </label> <input type="text"
									name="name" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									name="dob" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input type="text"
									name="address" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" name="qualification" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email"
									name="email" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary col-md-12 "
								action="register">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>