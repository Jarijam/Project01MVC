<%@page import="multi.pro01.restaurant.RestaurantVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>식당검색 페이지</title>
		<script type="text/javascript">
			category = "${category}";
			$(document).ready(function(){
				$("#category").val(category).attr("selected", "selected")
				//<select>에서 선택이 바뀔때마다 change 이벤트발생 -> change이벤트가 발생하면 /board/list/do를 호출하면서
				//category파라미터를 넘김
				$("#category").change(function(){
					location.href="/pro01/restaurant/restaurantlist.do?category="+encodeURI($(this).val())
				});
			});
		</script>
	</head>
<body>
	<%	ArrayList<RestaurantVO> restaurantList = (ArrayList<RestaurantVO>) request.getAttribute("restaurant_list");		
		int size = restaurantList.size();
	%>		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/pro01/restaurant/insertPage.do" style="text-align: right;">글쓰기</a></li>
		</ul>

		<h3>맛집 목록</h3>
	<div style="padding-top: 30px">
		<div class="col-md-3" style="padding-bottom: 10px">
		    구분:
			<form>
				<select name="category"  id="category">
					<option value="all">전체게시물</option>
					<option value="한식">한식</option>
					<option value="중식">중식</option>	
					<option value="일식">일식</option>				
				</select>
			</form>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>식당이름</th>
					<th>식당주소</th>
					<th>음식종류</th>	
					<th>식당번호</th>	
					<th>식당주메뉴</th>
				</tr>
			</thead>
			<tbody>
				 	<% for(int i=0;i<size;i++){
					RestaurantVO user = restaurantList.get(i); /* 84줄 ? 뒷 부분(restaurant_no는 컨트롤러 read.do의 String 값) */
					%>			
					<tr>
						<td><a href="/pro01/restaurant/read.do?restaurant=<%= user.getRes_name()%>&state=READ"><%= user.getRes_name() %></a></td>
						<%-- <td><%= user.getRes_name() %></td>	 --%>										
						<td><%= user.getRes_addr() %></td>	
						<td><%= user.getRes_type() %></td>					
						<td><%= user.getRes_num() %></td>
						<td><%= user.getRes_menu() %></td>
					</tr>
					<% } %>
			</tbody>
		</table>
		</div>		
		
	</body>

</html>