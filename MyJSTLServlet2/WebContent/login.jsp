
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp"></jsp:include>
<%
	String mierror = (String) request.getAttribute("mierror");
	String errorclass = mierror != null ? "haserror" : "";
%>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<section class="container">
	<div class="container-fluid">
		<div class="row">

			<div class="col-xs-12 col-md-8 titulo">
				<h1>Formulario de login</h1>
			</div>

			<div class="col-xs-12 col-md-4 login">

				<%
					if (request.getAttribute("mierror") != null) {
				%>
				
				<div class="error"><%=request.getAttribute("mierror")%></div>

				<%
					}
				%>
				
				

				<form class="form-inline" action="login" method="POST" novalidate>

					<div class="form-group">
						<label class="sr-only" for="email">Email</label> <input
							type="email" class="<%=errorclass%>" id="email" name="nombre">
					</div>

					<div class="form-group">
						<label class="sr-only" for="password">Password</label> <input
							type="password" class="<%=errorclass%>" id="password"
							name="password">
					</div>

					<button id="btn_login" type="submit" class="btn btn-default">Sign
						in</button>
					<div id="errores"></div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
<!-- <script src="validacion.js"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>