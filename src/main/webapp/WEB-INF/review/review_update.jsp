<%@page import="multi.pro01.review.ReviewVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>리뷰수정</title>
		</head>
	<body>
		<%
			ReviewVO review = (ReviewVO)request.getAttribute("review"); 
		%>
		<h3>리뷰수정</h3>
		<form action="/pro01/review/update_review.do" method="post">
			<div class="form-group">			
				<label class="col-sm-2 col-sm-2 control-label">식당이름</label>
					<div class="col-sm-8">
						<%-- <%= review.getRes_name() %> --%>
						${review.res_name }
					</div>
			</div>
			<div style="display: none">
				<input name="review_no" value="${review.review_no }">
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">메뉴이름</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="menu" value="${review.menu}"> <span
							class="help-block"></span>
						</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">별점</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="rating" value="${review.rating}">
							<span class="help-block"></span>
					</div>
			</div>	
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">사진</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="res_num">
							<span class="help-block"></span>
					</div>	
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">리뷰내용</label>
					<div class="col-sm-8">
						<textarea id="content"
							style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
							rows=15 name="rev_content">${review.rev_content }</textarea>

							</div>		
			</div>
										
			<div class="form-group">
				<div class="col-lg-4 text-center">
				</div>
				<div class="col-lg-2 text-center">
					<button type="submit" class="btn btn-success"
							style="width: 100px; background-color: #0ea006">수정
					</button>
				</div>
				</div>
			</form>
			<div class="form-group">
				<div class="col-lg-2 text-center">
					<button type="reset" class="btn btn-default"
							style="width: 100px; background-color: #9a9a9a">취소
					</button>
				</div>	
			<%-- <form action="/pro01/review/delete.do?review_no=<%= review.getReview_no()%>" method="post"> --%>
				<div class="form-group">			
					<div style="display: none">
						<input name="review_no" value="<%= review.getReview_no()%>">
						<%-- <input name="review_no" value="${review.review_no }"> --%>
					</div>
				</div>
				<div class="col-lg-2 text-center">
					<a href="/pro01/review/delete.do?review_no=<%= review.getReview_no()%>">
						<button type="button" class="btn btn-success" 
								style="width: 100px; background-color: #0ea006">삭제1
						</button>
					</a>
				</div>
				<!-- </form> -->	
			</div>	
							
	</body>
</html>