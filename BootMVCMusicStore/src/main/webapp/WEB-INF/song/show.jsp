<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song Details</title>
<%--  jsp:include page="styletags.jsp"/> --%>
</head>
<body>
<jsp:include page="song/navbar"/>

<div>
  <h2>${song.title} (${song.releaseYear})</h2>
  <p>$ ${song.costAmount}</p>
  <br>
  <p>${song.lyrics}</p>
</div>

</body>
</html>