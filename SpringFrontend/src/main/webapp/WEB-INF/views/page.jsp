<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cozentus Page</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<!-- Navbar -->
<%@ include file="./shared/navbar.jsp" %>

<!-- Home Content -->
<c:if test="${userClickHome == true}">
		<%@ include file="home.jsp" %>
</c:if>

<c:if test="${userClickAbout == true}">
		<%@ include file="about.jsp" %>
</c:if>

<c:if test="${userClickService == true}">
		<%@ include file="service.jsp" %>
</c:if> 

<c:if test="${userClickContact == true}">
		<%@ include file="contact.jsp" %>
</c:if>  

<!-- Table Content -->
<div class="row">
<div class="col-3"></div>
<div class="col-6">
 <%@ include file="./shared/table.jsp" %>
</div>
<div class="col-3"></div>
</div>

<!-- Bootstrap JS and jQuery scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>