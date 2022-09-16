<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDao"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
<%@include file="allCSS.jsp"%>
</head>
<body class="bg-light">
	<%@include file="navbar.jsp"%>

	<%-- <%
	Connection conn = DBConnect.getConn();
	out.println(conn);
	%> 
	 --%>

	<div class="container p-3">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-1">All Student Details</p>
				<c:if test="${not empty SucessMesg}">
					<p class="text-center text-success">${SucessMesg }</p>
					<c:remove var="SucessMesg" />
				</c:if>

				<c:if test="${not empty ErrorMesg}">
					<p class="text-center text-success">${ErrorMesg}</p>
					<c:remove var="ErrorMesg" />
				</c:if>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Address</th>
							<th scope="col">Qualification</th>
							<th scope="col">Email</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						StudentDao dao = new StudentDao(DBConnect.getConn());
						List<Student> list = dao.getAllStudent();
						for (Student s : list) {
						%>
						<tr>
							<th scope="row"><%=s.getFullname()%></th>
							<td><%=s.getDob()%></td>
							<td><%=s.getAddress()%></td>
							<td><%=s.getQualification()%></td>
							<td><%=s.getEmail()%></td>
							<td><a href="edit.jsp?id=<%=s.getId()%>"
								class="btn btn-sm btn-primary">Edit</a> <a
								href="delete?id=<%=s.getId()%>"
								class="btn btn-sm btn-danger ms-1">Delete</a></td>
						</tr>

						<%
						}
						%>


					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>