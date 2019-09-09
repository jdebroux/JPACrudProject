<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style><%@include file="/WEB-INF/styles/mainStyles.css"%></style>

<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Song Details</title>
</head>
<body class="mainBackground">
	<jsp:include page="navbar.jsp" />
<div class="container">
		<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
	<c:if test="${not empty song}">
		<div>
			<h2>*Song Results*</h2>
			<br>
			<h4>Title: ${song.title} (${song.releaseYear})</h4>
			<h4>Artist: ${song.artist}</h4>
			<h4>Album: ${song.album}</h4>
			<h4>Length: ${song.length} min</h4>
			<p>Cost: $${song.costAmount}</p>
			<br>
			<h4>Lyrics</h4>
			<p>${song.lyrics}</p>
		</div>
	<jsp:include page="editdeletebutton.jsp" />
	</c:if>
	<c:if test="${empty song}">
		<h2>Song Not Found</h2>
	</c:if>
	</div></div></div>
	</body>
</html>