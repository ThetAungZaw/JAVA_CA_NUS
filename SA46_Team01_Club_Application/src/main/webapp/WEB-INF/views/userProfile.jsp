
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>booking</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap(calender).min.css">
<link rel="stylesheet" href="css/styles(calender).min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker({

		});

		$("#datepicker").datepicker("setDate", new Date());
	});
</script>
</head>

<body>
	<div class="tab-content profile-page">
		<!-- PROFILE TAB CONTENT -->
		<div class="tab-pane profile active" id="profile-tab">



			<h1>Welcome to User Profile</h1>

			<form:form method="POST" modelAttribute="member"
				action="${pageContext.request.contextPath}/admin/updateprofile"
				class="form-horizontal" role="form">
				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="memberName"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">Name</label>
					</div>
					<div class=" input-column">
						<form:hidden path="memberNo"
							value="${searchedMember.getMemberNo() }" />
							
							<form:hidden path="contactTitle" value="SIG"/>
							<form:hidden path="dateOfBirth" value="${searchedMember.getDateOfBirth() }"/>
						<form:input path="memberName" class="form-control"
							value="${searchedMember.getMemberName()}" />
					</div>
				</div>

				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="password"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">password</label>
					</div>
					<div class=" input-column">
						<form:input path="userPassword" class="form-control"
							value="${searchedMember.getPassword()}" />
					</div>
				</div>

				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="memberNo"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">MemberID</label>
					</div>
					<div class=" input-column">
						<form:input path="memberNo" class="form-control"
							value="${searchedMember.getMemberNo()}" readonly="true" />
					</div>
				</div>

				<form:hidden path="userId" class="form-control" value="1" />

				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="address"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">Address</label>
					</div>
					<div class=" input-column">
						<form:input path="address" class="form-control"
							value="${searchedMember.getAddress()}" />
					</div>
				</div>

				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="postalCode"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">PostalCode</label>
					</div>
					<div class=" input-column">
						<form:input path="postalCode" class="form-control"
							value="${searchedMember.getPostalCode()}" />
					</div>
				</div>

				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="dateOfBirth"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">Date
							of Birth</label>
					</div>
					<div class=" input-column">
						<form:input path="dateOfBirth" id="datepicker"
							class="form-control" value="${searchedMember.getDateOfBirth()}" />
					</div>
				</div>


				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="email"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">Email</label>
					</div>
					<div class=" input-column">
						<form:input path="email" class="form-control"
							value=" ${searchedMember.getEmail()}" />
					</div>
				</div>



				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<label class="col-form-label" for="phoneNo"
							style="padding-right: 25%; font-family: 'Yanone Kaffeesatz', sans-serif; font-size: 20px;">PhoneNo</label>
					</div>
					<div class=" input-column">
						<form:input path="phoneNo" class="form-control"
							value="${searchedMember.getPhoneNo()}" />
					</div>
				</div>

				<div class="form-row form-group">
					<div class="col-sm-2 label-column">
						<input class="btn btn-primary" type="submit" value="Update" />
					</div>
					<div class="col-sm-2 label-column">
						<a class="btn btn-primary" href="/cab">Cancel</a>
					</div>
				</div>


			</form:form>
			<div class="content">
				<div class="main-content">
					<div class="widget widget-table">
						<div class="widget-header">
							<h3>
								<i class="fa fa-table"></i>BookingList
							</h3>
						</div>
						<!-- SHOW HIDE COLUMNS DATA TABLE -->
						<div class="widget-content">
							<table id="datatable-column-interactive"
								class="table table-sorting table-striped table-hover datatable">
								<thead>
									<tr>
										<th>BookingNo</th>
										<th>MemberNo</th>
										<th>FacId</th>
										<th>BookingDate</th>
										<th>SessionNo</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="prod" items="${bookingList}">
										<tr>
											<td>${prod.bookingNo}</td>
											<td>${prod.memberNo}</td>
											<td>${prod.facilityId}</td>
											<td>${prod.bookingDate}</td>
											<td>${prod.sessionNo}</td>


											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>
			</div>


			<script src="js/jquery(calender).min.js"></script>
			<script src="bootstrap/js/bootstrap(calender).min.js"></script>
</body>
</html>