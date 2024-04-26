<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>MAIN</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">
label {
	font-weight: bold;
	font-size: 16px;
	}

</style>

</head>
<body class="container">
<h1>거래처 관리</h1>
<br><br>
	<div class="g-3 row">
		<div class="text-center">
			<button id="writeBtn" type="button" class="btn btn-primary col-2">등록</button>
		</div>
	</div>
	<form id="searchForm" method="get" >
		<div class="g-3 row">
			<div class="col-auto">
				<select id="searchType" name="searchType" class="form-control">
					<option value="all" <c:out value="${allVO.searchType eq 'all' ? 'selected':'' }"/>>전체</option>
					<option value="b"  <c:out value="${allVO.searchType eq 'b' ? 'selected':'' }"/>>사업자번호</option>
					<option value="c" <c:out value="${allVO.searchType eq 'c' ? 'selected':'' }"/>>거래처명</option>
				</select>
				
			</div>
			<div class="col-auto">
				<input type="text" id="keyword" name="keyword" class="form-control col-sm-2" value="${allVO.keyword }">
			</div>	
			<div class="col-auto">
				<button type="button" id="searchBtn"class="btn btn-outline-success">조회</button>
			</div>
		</div>
		<table class="table table-hover table-bodered">
			<tr>
				<th>사업자 번호</th>
				<th>거래처 명</th>
			</tr>
			<c:forEach items="${list }" var="list">
			<tr>
				<td><a href="read?BUSI_NUM=${list.BUSI_NUM}">${list.BUSI_NUM }</a></td>
				<td>${list.CUSTOM }</td>
			</tr>
			</c:forEach>
		</table>
	</form>
	<br><br>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#writeBtn").on("click",function(){
		location.href="/insert";
	});
	
	$("#searchBtn").on("click",function(){
		$("#searchForm").submit()
	});
	
	
});
</script>
</html>
