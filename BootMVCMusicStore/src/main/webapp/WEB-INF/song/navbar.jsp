<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home.do">Home</a>
		</div>
		<form class="navbar-form navbar-right" action="getKeywordSongs.do"
			method="GET">
			<input class="form-control" type="text" size="30" name="keyword"
				placeholder="Keyword in Artist, Album, or Title" /> <input class="btn btn-primary" type="submit" value="Find Songs" />
		</form>
		<form class="navbar-form navbar-right" action="showSingleSong.do"
			method="GET">
			<input class="form-control" type="number" min=1 name="sid"
				placeholder="Song ID" /> <input class="btn btn-primary"
				type="submit" value="Show Song" />
		</form>
	</div>
</nav>

