<%@page import="multi.pro01.restaurant.RestaurantVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>		
		</head>
	<body>	
	<%	ArrayList<RestaurantVO> restaurantList = (ArrayList<RestaurantVO>) request.getAttribute("restaurant_list");		
		
	%>		
		<i class="fa fa-angle-right"></i> 식당 수정하기		
	<hr>
	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">

				<form class="form-horizontal style-form"
				 action="/pro01/restaurant/update.do" method="post">			 				
						<div class="form-group">
							<div class="col-sm-8">
							<label class="col-sm-2 col-sm-2 control-label">식당이름</label>
								<input type="text" class="form-control" name="res_name" value="${restaurant.res_name}"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">식당주소</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="res_addr" value="${restaurant.res_addr}"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">음식종류</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="res_type" value="${restaurant.res_type}"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">식당번호</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="res_num" value="${restaurant.res_num}"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">식당주메뉴</label>
							<div class="col-sm-8">
								<input name="res_menu" type="text" class="form-control"  value="${restaurant.res_menu}"> <span
									class="help-block">
									
									게시글 유형에 맞는 내용으로 작성 부탁드립니다. </span>
							</div>
						</div>
					
						<div class="form-group">
							<div class="col-lg-4 text-center"></div>
							<div class="col-lg-2 text-center">
								<button type="submit" class="btn btn-success"
									style="width: 100px; background-color: #0ea006">수정</button>
							</div>
							<div class="col-lg-2 text-center">
								<button type="reset" class="btn btn-default"
									style="width: 100px; background-color: #9a9a9a">취소</button>
							</div>
	
						</div>
						
					</form>
			
			</div>
		</div>
	</div>
</body>
</html>