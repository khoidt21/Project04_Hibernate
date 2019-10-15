<%@page import="com.hibernate.dao.NewDAO"%>
<%@page import="com.hibernate.controller.NewControllerServlet"%>
<%@page import="com.hibernate.been.News"%>
<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!-- Contact Section -->
<section class="page-section" id="contact">
	<div class="container">
		<!-- Contact Section Form -->
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto" style="margin-top:20px;">	
				<c:forEach items="${listNew}" var="news">
				<div class="post-preview">
						<h2 class="post-title"><c:out value="${news.title}"/></h2>
						<h3 class="post-subtitle"><c:out value="${news.description}"/></h3>
					
					<p class="post-meta">
						Posted by <c:out value="${news.author}"/> on September 24, 2019
					</p>
				</div>
				<hr>
				</c:forEach>
				<!-- Pager -->
				<div class="clearfix">
					<a class="btn btn-primary float-right" href="#">Older Posts →</a>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="footer.jsp"%>
</body>
<style>

h2.post-title{
	color: #000 !important;
}
h3.post-subtitle{
	color: #212529 !important;
}
.post-preview>.post-meta>a{
	color: #212529 !important;
}
.floating-label-form-group label {
	opacity: 1 !important;
}

.bg-secondary {
	background-color: #000 !important;
}

.copyright {
	background-color: #000 !important;
}

.footer {
	background-color: rgba(5, 42, 62, 1) !important;
}
</style>
</html>
</html>