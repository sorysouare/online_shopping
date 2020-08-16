<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>        
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>online shopping - ${title}</title>
    
    <script>
		window.menu = '${title}'
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap readable Theme CSS -->
    <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
    

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">

		<!-- NAVIGATION -->
		<%@ include file="./shared/navbar.jsp" %>
	
	 	<!-- Page content -->
	 	<div class="content">
	 	
		 	<!-- Loading the home content  -->
		 	<c:if test="${userClickHome == true }">
		 		<%@ include file="home.jsp" %>
		    </c:if>
		    
		    <!-- Load only user click about  -->
		 	<c:if test="${userClickAbout == true }">
		 		<%@ include file="about.jsp" %>
		    </c:if>
		    
		    <!-- Load only user click contact  -->
		 	<c:if test="${userClickContact == true }">
		 		<%@ include file="contact.jsp" %>
		    </c:if>
	    </div>
	    
		<!-- Footer comes here -->
		
		<%@ include file="./shared/footer.jsp" %>
		
	    <!-- JavaScript -->
	    <script src="${js}/jquery.js"></script>
	    <script src="${js}/bootstrap.min.js"></script>
	    
	    <!-- self coded java script -->
		<script src="${js}/myapp.js"></script>
	</div>
	
</body>

</html>