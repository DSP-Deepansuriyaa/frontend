<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<style>
@media ( min-width : 768px) {
	.field-label-responsive {
		padding-top: .5rem;
		text-align: right;
	}
}
</style>
	<div class="container">
			<c:if test="${ShowMessage}">
				<div class="alert alert-info">
					<strong>"${DispMessage}"</strong>

				</div>

			</c:if>
			<c:if test="${!editmode}">
						<c:set var="url" value="addseller"/>
					</c:if>
					
					<c:if test="${editmode}">
						<c:set var="url" value="updateseller"/>
		</c:if>
		
		<form:form class="form-horizontal" modelAttribute="sellermodel"
			method="post" action="${url}">
			
			
			<c:if test="${editmode}">
		<div class="form-group">
		<label for="username" class="text-info">Seller ID</label>
		<form:input type="text" name="username" id="username" class="form-control"
						 path="sel_Id" readonly="true" />
		</div>
		</c:if>
	
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2>Seller</h2>
				<hr>
			</div>
		</div>
<div class="col-md-3">
		<div class="form-control-feedback">
			<span class="text-danger align-middle"> <!-- Put name validation error messages here -->
			</span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3 field-label-responsive">
			<label for="username" class="text-info">Name</label>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<div class="input-group mb-2 mr-sm-2 mb-sm-0">
					
					<form:input type="text" name="username" id="username" class="form-control"
						 path="sel_Name" />
					<form:errors path="sel_Name" cssStyle="color:Red"></form:errors>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="form-control-feedback">
				<span class="text-danger align-middle"> <!-- Put e-mail validation error messages here -->
				</span>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3 field-label-responsive">
			<label for="password" class="text-info">Location</label>
		</div>
		<div class="col-md-6">
			<div class="form-group has-danger">
				<div class="input-group mb-2 mr-sm-2 mb-sm-0">
					
					<form:textarea type="text" name="location" class="form-control"
						id="location" path="sel_Location"></form:textarea>
					<form:errors path="sel_Location"></form:errors>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-md-6">
		<div class="form-group">
			<div class="input-group mb-2 mr-sm-2 mb-sm-0">
				<div class="input-group-addon" style="width: 2.6rem">
					<i class="fa fa-repeat"></i>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<input type="submit" name="submit" class="btn btn-success" value="Add">
				<i class="fa fa-user-plus"></i> ADD
		</div>
	</div>
	</form:form>
</div>