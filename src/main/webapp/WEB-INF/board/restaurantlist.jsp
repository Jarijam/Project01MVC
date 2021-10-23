<%@page import="multi.pro01.restaurant.RestaurantVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>식당검색 페이지</title>
</head>
<body>
	<%
		ArrayList<RestaurantVO> restaurantList = (ArrayList<RestaurantVO>) request.getAttribute("restaurant_name");	
	%>
	<form  action="/pro01/restaurant/search.do">
	<section class="bg-success py-5">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-md-8 text-white">
					<h1>식당</h1>
				</div>
				<div>
					<div class="">키워드로 검색하세요</div>
					<input type="text" name="restaurant" size="50">
				</div>
				<div>
					<input type="submit" value="검색">
				</div>
			</div>
		</div>
		
		<form action="/pro01/restaurant/search.do">
		<select name="tag">
			<option value="id">작성자</option>
			<option value="title">제목</option>
			<option value="content">본문</option>
			<option value="write_date">작성일</option>
		</select> <input type="text" name="search" /> <input type="submit" value="검색">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#" style="text-align: right;">글쓰기</a></li>
		</ul>
	</form>
		<h3>검색해서 db에 있는 정보면 여기에 뿌려주고 싶음</h3>
		<h4>그렇게 하려면 db에 저장된 컬럼대로 테이블을 만들어서 테이블에 깔끔하게 뿌려주면 좋을 듯</h4>
		<h6>		해야 할 일 	</h6>
		<h6>1. data.go.kr에서 정보를 뽑아서 컬럼을 찾기</h6>
		<h6>2. 그 컬럼대로 테이블 만들기</h6>
		<h6>3. 식당 정보를 입력,수정,삭제 가능하게 만들기</h6>
		<h6>4. 식당을 클릭하면 사용자에게 어떤 정보를 주기(일단 음식사진)</h6>		
	</section>
	</form>						
</body>

</html>