<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<html>
<body>
	<title>hello!</title>
	<jsp:include page="nav.jsp"></jsp:include>
	
	<c:if test="${indexpage}">
	<jsp:include page="slider.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${regPage}">
	<jsp:include page="register.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${logPage}">
	<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${conPage}">
	<jsp:include page="contactus.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${helpPage}">
	<jsp:include page="help.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${categorypage}">
	<jsp:include page="category.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${sellerpage}">
	<jsp:include page="seller.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${productpage}">
	<jsp:include page="product.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${viewcategorypage}">
	<jsp:include page="viewcategory.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${viewsellerpage}">
	<jsp:include page="viewseller.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${viewproductpage}">
	<jsp:include page="viewproduct.jsp"></jsp:include>
	</c:if>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
