<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 로고 영역 --%>
<div class="bg-primary col-2 d-flex align-items-center">
	<h3><a href="layout1.jsp" class="font-weight-bold text-success">Melong</a></h3>
</div>

<%-- 검색 영역 --%>
<div class="bg-danger col-10 d-flex align-items-center">
	<form method="get" action="layout2.jsp">
		<div class="input-group">
			<input type="text" class="form-control" name="title">
			<div class="input-group-append">
				<button class="btn btn-info" type="submit">검색</button>
			</div>
		</div>
	</form>
</div>