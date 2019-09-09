<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
<%@include file="/WEB-INF/styles/mainStyles.css"%>
</style>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<c:if test="${not empty song}">
	<title>Edit Song</title>
</c:if>
<c:if test="${empty song}">
	<title>Add Song</title>
</c:if>
</head>
<body class="mainBackground">
	<jsp:include page="navbar.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
				<c:if test="${not empty song}">
					<h2>*Edit Song*</h2>
				</c:if>
				<c:if test="${empty song}">
					<h2>*Add Song*</h2>
				</c:if>

				<form action="newOrEditSong.do" method="POST">
					Title: <input type="text" name="title" size="28" value="${song.title}">
					<br> Artist: <input type="text" size="27" name="artist"
						value="${song.artist}"> <br> Album: <input
						type="text" size="26" name="album" value="${song.album}"> <br>
					Release Year: <input type="number"  min="1000" size="27" name="releaseYear" 
						value="${song.releaseYear}" /> <br> Length: <input
						type="number" min="0.00" step="0.01" size="26" name="length"
						 value="${song.length}"> <br> Genre ID: <select
						name="genreId">
						<option value="1" ${song.genreId == '1' ? 'selected' : ' '}>Folk
							Music</option>
						<option value="2" ${song.genreId == '2' ? 'selected' : ' '}>Pop</option>
						<option value="3" ${song.genreId == '3' ? 'selected' : ' '}>Musical
							Theatre</option>
						<option value="4" ${song.genreId == '4' ? 'selected' : ' '}>Jazz</option>
						<option value="5" ${song.genreId == '5' ? 'selected' : ' '}>Rock</option>
						<option value="6" ${song.genreId == '6' ? 'selected' : ' '}>Country</option>
						<option value="7" ${song.genreId == '7' ? 'selected' : ' '}>Hip
							Hop</option>
						<option value="8" ${song.genreId == '8' ? 'selected' : ' '}>Classical</option>
						<option value="9" ${song.genreId == '9' ? 'selected' : ' '}>Blues</option>
						<option value="10" ${song.genreId == '10' ? 'selected' : ' '}>Reggae</option>
						<option value="11" ${song.genreId == '11' ? 'selected' : ' '}>Metal</option>
						<option value="12" ${song.genreId == '12' ? 'selected' : ' '}>Electronic</option>
						<option value="13" ${song.genreId == '13' ? 'selected' : ' '}>Rap</option>
						<option value="14" ${song.genreId == '14' ? 'selected' : ' '}>Funk</option>
						<option value="15" ${song.genreId == '15' ? 'selected' : ' '}>Alternative
							Rock</option>
						<option value="16" ${song.genreId == '16' ? 'selected' : ' '}>Disco</option>
						<option value="17" ${song.genreId == '17' ? 'selected' : ' '}>Punk
							Rock</option>
						<option value="18" ${song.genreId == '18' ? 'selected' : ' '}>Soul</option>
						<option value="19" ${song.genreId == '19' ? 'selected' : ' '}>Soundtrack</option>
						<option value="20" ${song.genreId == '20' ? 'selected' : ' '}>Techno</option>
						<option value="21" ${song.genreId == '21' ? 'selected' : ' '}>Ambient</option>
						<option value="22" ${song.genreId == '22' ? 'selected' : ' '}>Psychedelic</option>
						<option value="23" ${song.genreId == '23' ? 'selected' : ' '}>Dubstep</option>
						<option value="24" ${song.genreId == '24' ? 'selected' : ' '}>Ska</option>
						<option value="25" ${song.genreId == '25' ? 'selected' : ' '}>Grunge</option>
						<option value="26" ${song.genreId == '26' ? 'selected' : ' '}>Bluegrass</option>
					</select> <br> Language: <select name="languageId">
						<option value="1" ${song.languageId == '1' ? 'selected' : ' '}>English</option>
						<option value="2" ${song.languageId == '2' ? 'selected' : ' '}>Italian</option>
						<option value="3" ${song.languageId == '3' ? 'selected' : ' '}>Spanish</option>
						<option value="4" ${song.languageId == '4' ? 'selected' : ' '}>French</option>
						<option value="5" ${song.languageId == '5' ? 'selected' : ' '}>German</option>
						<option value="6" ${song.languageId == '6' ? 'selected' : ' '}>Japanese</option>
					</select> <br> Price: <input type="number" min="0.00" step="0.01"
						size="28" name="costAmount" value="${song.costAmount}" /> <br> Lyrics:<br>
					<textarea name="lyrics" rows="10" cols="32">${song.lyrics}</textarea>
					<br> 
					<c:if test="${empty song}">
					<input class="btn btn-primary" type="submit" value="Add Song" />
					</c:if>
					<c:if test="${not empty song}">
					<input class="btn btn-primary" type="submit" value="Edit Song" />
					</c:if>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>