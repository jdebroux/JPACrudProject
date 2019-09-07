<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song Lookup</title>
</head>
<body>
	<form action="getSong.do" method="GET">
		Song ID: <input type="number" min=1 name="sid" /> 
		<input type="submit" value="Show Song" />
	</form>
	<form action="getSong.do" method="GET">
		<c:forEach var="song" items="${songs}">
			<ul>
				<li><a href="getSong.do?fid=${song.id}">${song.title}</a></li>
			</ul>
		</c:forEach>
	</form>

</body>
</html>