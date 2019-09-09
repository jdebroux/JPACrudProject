<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form action="editSong.do" method="POST" modelAttribute="song">
	<input type="hidden" name="id" value="${song.id}" />
	<ul>
		<li><input class="btn btn-primary" type="submit"
			value="Edit Song" /></li>
	</ul>
</form:form>
<form:form action="deleteSong.do" method="POST" modelAttribute="song">
	<input type="hidden" name="id" value="${song.id}" />
	<ul>
		<li><input class="btn btn-primary" type="submit"
			value="Delete Song" /></li>
	</ul>
</form:form>