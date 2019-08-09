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
						<c:set var="url" value="addproduct"/>
					</c:if>
					
					<c:if test="${editmode}">
						<c:set var="url" value="updateproduct"/>
			</c:if>

<form:form class="form-horizontal" modelAttribute="productmodel"
		method="post" action="${url}">



	

		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h2>Product</h2>
				<hr>
			</div>
		</div>
		
		<c:if test="${editmode}">
		<div class="group">
		<label for="username" class="text-info">Product Id</label>
		<form:input type="text" name="username" id="username"
							class="form-control" path="pro_Id" />
		</div>
		</c:if>
		
		
		
		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="username" class="text-info">Name</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:input type="text" name="username" id="username"
							class="form-control" path="pro_Name" />
						<form:errors path="pro_Name" cssStyle="color:Red"></form:errors>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Category</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:select id="user" class="form-control" type="text"
							path="pro_cat.cat_Id">
							<c:forEach items="${catlist}" var="q">
								<form:option value="${q.cat_Id}" cssStyle="color:Black">${q.cat_Name}</form:option>
							</c:forEach>
						</form:select>
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="password" class="text-info">Seller</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:select id="user" class="form-control" type="text"
							path="pro_sel.sel_Id">
							<c:forEach items="${sellist}" var="p">
								<form:option value="${p.sel_Id}" cssStyle="color:Black">${p.sel_Name}</form:option>
							</c:forEach>
						</form:select>
					</div>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Description</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:textarea id="user" type="text" class="form-control"
							path="pro_Des" />
					</div>
				</div>
			</div>
		</div>




		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Stock</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:input id="user" type="text" class="form-control"
							path="stock" />
					</div>
				</div>
			</div>
		</div>





		<div class="row">
			<div class="col-md-3 field-label-responsive">
				<label for="user" class="text-info">Price</label>
			</div>
			<div class="col-md-6">
				<div class="form-group has-danger">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<form:input id="user" type="text" class="form-control"
							path="pro_Price" />
					</div>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<input type="submit" name="submit" class="btn btn-success"
					value="Add"> <i class="fa fa-user-plus"></i> ADD
			</div>
		</div>
	</form:form>

</div>