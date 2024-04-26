<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="org.springframework.format.annotation.DateTimeFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>상세페이지</title>
<style type="text/css">
.ui-widget-header { border: 0px solid #dddddd; background: #fff; } 

 .ui-datepicker-calendar>thead>tr>th { font-size: 14px !important; } 

 .ui-datepicker .ui-datepicker-header { position: relative; padding: 10px 0; } 

 .ui-state-default,
 .ui-widget-content .ui-state-default,
 .ui-widget-header .ui-state-default,
 .ui-button,
 html .ui-button.ui-state-disabled:hover,
 html .ui-button.ui-state-disabled:active { border: 0px solid #c5c5c5; background-color: transparent; font-weight: normal; color: #454545; text-align: center; } 

 .ui-datepicker .ui-datepicker-title { margin: 0 0em; line-height: 16px; text-align: center; font-size: 14px; padding: 0px; font-weight: bold; } 

 .ui-datepicker { display: none; background-color: #fff; border-radius: 4px; margin-top: 10px; margin-left: 0px; margin-right: 0px; padding: 20px; padding-bottom: 10px; width: 300px; box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1); } 

 .ui-widget.ui-widget-content { border: 1px solid #eee; } 

 #datepicker:focus>.ui-datepicker { display: block; } 

 .ui-datepicker-prev,
 .ui-datepicker-next { cursor: pointer; } 

 .ui-datepicker-next { float: right; } 

 .ui-state-disabled { cursor: auto; color: hsla(0, 0%, 80%, 1); } 

 .ui-datepicker-title { text-align: center; padding: 10px; font-weight: 100; font-size: 20px; } 

 .ui-datepicker-calendar { width: 100%; } 

 .ui-datepicker-calendar>thead>tr>th { padding: 5px; font-size: 20px; font-weight: 400; } 

 .ui-datepicker-calendar>tbody>tr>td>a { color: #000; font-size: 12px !important; font-weight: bold !important; text-decoration: none;}

 .ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover { cursor: auto; background-color: #fff; } 

 .ui-datepicker-calendar>tbody>tr>td { border-radius: 100%; width: 44px; height: 30px; cursor: pointer; padding: 5px; font-weight: 100; text-align: center; font-size: 12px; } 

 .ui-datepicker-calendar>tbody>tr>td:hover { background-color: transparent; opacity: 0.6; } 

 .ui-state-hover,
 .ui-widget-content .ui-state-hover,
 .ui-widget-header .ui-state-hover,
 .ui-state-focus,
 .ui-widget-content .ui-state-focus,
 .ui-widget-header .ui-state-focus,
 .ui-button:hover,
 .ui-button:focus { border: 0px solid #cccccc; background-color: transparent; font-weight: normal; color: #2b2b2b; } 

 .ui-widget-header .ui-icon { background-image: url('./btns.png'); } 

 .ui-icon-circle-triangle-e { background-position: -20px 0px; background-size: 36px; } 

 .ui-icon-circle-triangle-w { background-position: -0px -0px; background-size: 36px; } 

 .ui-datepicker-calendar>tbody>tr>td:first-child a { color: red !important; } 

 .ui-datepicker-calendar>tbody>tr>td:last-child a { color: #0099ff !important; } 

 .ui-datepicker-calendar>thead>tr>th:first-child { color: red !important; } 

 .ui-datepicker-calendar>thead>tr>th:last-child { color: #0099ff !important; } 

 .ui-state-highlight,
 .ui-widget-content .ui-state-highlight,
 .ui-widget-header .ui-state-highlight { border: 0px; background: #f1f1f1; border-radius: 50%; padding-top: 10px; padding-bottom: 10px; } 

 .inp { padding: 10px 10px; background-color: #f1f1f1; border-radius: 4px; border: 0px; } 

 .inp:focus { outline: none; background-color: #eee; } 


</style>
</head>
<body class="container">
<br>
<% java.util.Date date = new java.util.Date();
	
%>
<fmt:formatDate var="now" pattern="YYYY-MM-dd HH:mm:ss" value="<%=date%>"/>
<!-- 국가 -->
<% String[] countryEng = Locale.getISOCountries();%>

<h1 class="text-center">거래처 정보</h1>
<br><br>
<form id="customForm"  method="post" >
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">사업자 번호</label>
				<input type="text" id="busiNum" name="BUSI_NUM" class="form-control" maxlength="10" value="${read.BUSI_NUM}" readonly="readonly">
			</div>
			<div class="col-sm-4">
				<label class="form-label">약칭</label>
				<input type="text" id="custom" name="CUSTOM" class="form-control" maxlength="10" value="${read.CUSTOM}" >
			</div>
		</div>
		<div class="g-3 row"  >
			<div class="col-sm-4">
				<label class="form-label">거래처명</label>
				<input type="text" id="short" name="SHORT" class="form-control" maxlength="10" value="${read.SHORT}">
			</div>
		</div>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">대표자</label>
				<input type="text" id="ceo" name="CEO" class="form-control" maxlength="5"value="${read.CEO}">
			</div>
			<div class="col-sm-4">
				<label class="form-label">담당자</label>
				<input type="text" id="chargePerson" name="CHARGE_PERSON" class="form-control"maxlength="5"value="${read.CHARGE_PERSON}">
			</div>
		</div>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">업태</label>
				<input type="text" id="busiCondition" name="BUSI_CONDITION" class="form-control"maxlength="5" value="${read.BUSI_CONDITION}">
			</div>
			<div class="col-sm-4">
				<label class="form-label">종목</label>
				<input type="text" id="item" name="ITEM" class="form-control"maxlength="5" value="${read.ITEM}">
			</div>
		</div>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">우편번호</label>
				<button type="button" id="addrSearchBtn" class="btn btn-outline-warning col-sm-4">검색</button>
				<input type="text" id="postNum" name="POST_NUM" class="form-control" readonly="readonly"  value="${read.POST_NUM}">
				
			</div>
			<div class="col-sm-4">
				<label class="form-label">주소1</label>
				<input type="text" id="addr1" name="ADDR1" class="form-control" readonly="readonly"  value="${read.ADDR1}">
			</div>
		</div>
		<div class="g-3 row">
			<div class="col-sm-8">
				<label class="form-label">주소2</label>
				<input type="text" id="addr2" name="ADDR2" class="form-control"  value="${read.ADDR2}">
			</div>
		</div>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">전화번호</label>
				<input type="text" id="tel" name="TEL" class="form-control" maxlength="10" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${read.TEL}">
			</div>
			<div class="col-sm-4">
				<label class="form-label">팩스번호</label>
				<input type="text" id="fax" name="FAX" class="form-control" maxlength="10" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="${read.FAX}">
			</div>
		</div>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">홈페이지</label>
				<input type="text" id="homepage" name="HOMEPAGE" class="form-control" value="${read.HOMEPAGE}">
			</div>
		</div>
		<br>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">법인여부</label>
				<input type="radio" class="coYn" name="CO_YN" value="Y" <c:out value="${read.CO_YN eq 'Y'? 'checked':'' }"/> >법인<input class="coYn" type="radio" name="CO_YN" value="N" <c:out value="${read.CO_YN eq 'N'? 'checked':'' }"/> >개인
			</div>
			<div class="col-sm-4">
				<label class="form-label">해외여부</label>
				<input type="radio" class="foreignYn" name="FOREIGN_YN" value="Y" <c:out value="${read.FOREIGN_YN eq 'Y'? 'checked':'' }"/>>국내<input class="foreignYn"  type="radio" name="FOREIGN_YN" value="N" <c:out value="${read.FOREIGN_YN eq 'N'? 'checked':'' }"/>>해외
			</div>
		</div>
		<br>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="form-label">과세구분</label>
				<select id="taxYn" name="TAX_YN" class="form-control">
					<option value="Y"  <c:out value="${read.TAX_YN eq 'Y'? 'selected':'' }"/> class="form-control">과세</option>
					<option value="N" <c:out value="${read.TAX_YN eq 'N'? 'selected':'' }"/> class="form-control">면세</option>
				</select>
			</div>
			<br><br>
			<div class="col-sm-2">
				<label class="form-label">국가</label>
			</div>
			<div class="col-sm-2">
				<select name="COUNTRY_ENG" id="countryEng" class="form-control">
						<c:forEach var="countryEng" items="<%=countryEng%>" >
							<option  <c:out value="${read.COUNTRY_ENG eq countryEng ? 'selected':'' }"/> />${countryEng }</option>
						</c:forEach>
				</select>
			</div>
			<div class="col-sm-2">
				<select name="COUNTRY_KOR" id="countryKor" class="form-control">
					<% Locale locale = null;
						String[] countryKor = Locale.getISOCountries();
					for(String i :countryKor){
						locale =new Locale("ko",i);  
					%>
					<c:forEach var="locale" items="<%=locale.getDisplayCountry()%>">
						<option <c:out value="${read.COUNTRY_KOR eq locale ? 'selected':'' }"/>/>${locale }</option>
					</c:forEach>
					<%}
					%>
				</select>
			</div>
			<div class="col-sm-2">
				<button type="button" id="searchCountryBtn" class="btn btn-outline-success col-sm-4" data-bs-toggle="modal" data-bs-target="#staticBackdrop">검색</button>
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="staticBackdropLabel">국가명 검색</h1>
				      </div>
				      <div class="modal-body g-3 row">
				        <div class="col-auto">
				        	<select id="countryType" name="countryType"  class="form-control">
				        		<option value="all">전체</option>
				        		<option value="kor">한글 국가명</option>
				        		<option value="eng">영어 국가명</option>
				        	</select>
				        </div>
				        <div class="col-auto">
				        	<input type="text" id="countryKeyword" name="countryKeyword" class="form-control">
				        </div>
				        <div class="col-auto">
				        	<button type="button" id="countryBtn" class="btn btn-warning" >검색</button>
				        </div>
		        	<table class="table table-hover">
		        		<thead>
			        		<tr>
			      				<th>한글 국가명</th>
			      				<th>영어 국가명</th> 
			      			</tr>
			      		</thead>
	      				<tbody id="countryData">
	      				</tbody>
		        	</table>
		        	<div class="modal-footer">
			        	<div class="g-3 row">	
				        	<div class="col-auto">
				        		<button  type="button" class="btn btn-primary">적용</button>
				        	</div>
				        	<div class="col-auto">
				        		<button type="button" class="btn btn-danger" data-bs-dismiss="modal">닫기</button>
				        	</div>
				        </div>
			        </div>
			        </div>
				      </div>
				  </div>
				</div>
			</div>
		</div>
		<br>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="fomr-label">특수관계자</label>
				<input type="checkbox" value="Y" <c:if test="${fn:contains(read.SPECIAL_RELATION,'Y') }">checked</c:if> class="specialRelation" id="specialRelation" > 
				<input type="checkbox" value="N" id="specialRelation" checked="checked" style="display: none;">
				
			</div>
			<div class="col-sm-4">
				<label class="fomr-label">거래중지</label>
				<input type="checkbox" value="Y" <c:if test="${fn:contains(read.TRADE_STOP,'Y')}">checked</c:if> class="tradeStop" id="tradeStop" >
				<input type="checkbox" value="N" id="tradeStop" checked="checked" style="display: none;">
			</div>
		</div>
		<br>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="fomr-label">계약기간(시작)</label>
				<input type="text" id="contractPeriodS" name="CONTRACT_PERIOD_S" class="form-control" value="${read.CONTRACT_PERIOD_S }">
			</div>	
			<div class="col-sm-4">
				<label class="fomr-label">계약기간(끝)</label>
				<input type="text"   id="contractPeriodE" name="CONTRACT_PERIOD_E" class="form-control" value="${read.CONTRACT_PERIOD_E }">
			</div>
		</div>
		<br>
		<div class="g-3 row">
			<div class="col-sm-4">
				<label class="fomr-label">등록정보</label>
			</div>
			<br>
			<div class="col-sm-4">
				<input type="text" id="regiInfoMan" name="REGI_INFO_MAN"  readonly="readonly" class="form-control" maxlength="5" value="${read.REGI_INFO_MAN }"> 
			</div>
			<div class="col-sm-4">
				<input type="text" id="regiInfoDate" name="REGI_INFO_DATE"  readonly="readonly" class="form-control" value="${read.REGI_INFO_DATE }">
			</div>
			<br>
			<div class="col-sm-4">
				<label class="fomr-label">변경정보</label>
			</div>
			<div class="col-sm-4">
				<input type="text" id="modInfoMan" name="MOD_INFO_MAN"  class="form-control" maxlength="5" value="${read.MOD_INFO_MAN }"> 
			</div>
			<div class="col-sm-4">
				<input type="text" id="modInfoDate"  name="MOD_INFO_DATE" readonly="readonly" class="form-control" value="${now }" > 
			</div>
		</div>
	</form>
	<br><br><br>
	 <form id="accountForm" method="post">
	 	<div class="g-3 row">
	 		<label class="form-label">(거래처 계좌정보)</label>
	 	</div>
	 	<div class="g-3 row">
	 		<table class="table table-bordered">
	 			<tr>
	 				<th>사무소</th>
	 				<th>은행</th>
	 				<th>계좌번호</th>
	 			</tr>
	 			<tr>
	 				<td><input type="text" id="factory" name="FACTORY" class="form-control" value="${read.FACTORY }"></td>
	 				<td><input type="text" id="tradeBank" name="TRADE_BANK" class="form-control" value="${read.TRADE_BANK }"> </td>
	 				<td><input type="text" id="accountNum" maxlength="13" name="ACCOUNT_NUM" class="form-control" value="${read.ACCOUNT_NUM }" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"> </td>
	 			</tr>
	 		</table>
	 	</div>
	 </form>
	 <br><br>
	 <div class="g-3 row">
	 	<div class="col-2">
 			 <button type="button" id="listBtn" class="btn btn-info form-control">목록으로</button>
	 	
	 	</div>
	 	<div class="col-2">
 			 <button type="button" id="registBtn" class="btn btn-primary form-control">등록</button>
	 	
	 	</div>
	 	<div class="col-2">
 			 <button type="button" id="resetBtn" class="btn btn-warning form-control">초기화</button>
	 	
	 	</div>
	 	<div class="col-2">
 			 <button type="button" id="updateBtn" class="btn btn-success form-control">수정</button>
	 	
	 	</div>
	 	<div class="col-2">
			<button type="button" id="deleteBtn" class="btn btn-danger form-control">삭제</button>
	 	</div>
	 </div>
	 <br><br>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--datepicker-->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.2/i18n/jquery.ui.datepicker-ko.min.js"></script>
<!-- 주소 api --> 
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

$.datepicker.setDefaults({
	  dateFormat: 'yy-mm-dd',
	  prevText: '이전 달',
	  nextText: '다음 달',
	  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	  showMonthAfterYear: true,
	  yearSuffix: '년'
});

$(document).ready(function(){
	
   $("#countryBtn").on("click",function(){
		$.ajax({
			url:"/country/search",
			type:"post",
			dataType:"text",
			data: {
				"CountryType": $("#countryType").val(),
				"CountryKeyword":$("#countryKeyword").val()
			},success:function(data){
				console.log(data)
			}
		})

	});
	$("#contractPeriodS,#contractPeriodE").datepicker({
        todayHighlight :true
        ,changeMonth:true
        ,changeYear:true
        ,dateFormat:"yy-mm-dd"
        ,dayNames : ['월요일','화요일','수요일','목요일','금','토','일']
        ,dayNamesMin : ['월','화','수','목','금','토','일']
        ,monthNamesShort:  [ "1월", "2월", "3월", "4월", "5월", "6월","7월", "8월", "9월", "10월", "11월", "12월" ]
        ,showOtherMonths:true
    }); 

    
   $("#addrSearchBtn").on("click",function(){   
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("addr1").value = extraAddr;
                
                } else {
                    document.getElementById("addr1").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postNum').value = data.zonecode;
                document.getElementById("addr1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr2").focus();
            }
        }).open();
    });
    
    $("#listBtn").on("click",function(){
    	location.href="/";
    });

    $("#registBtn").on("click",function(){
    	location.href="/insert";
    });
    
    $("#resetBtn").on("click",function(){
    	location.reload(true);
    });
    
    
    $("#updateBtn").on("click",function(e){	
   		if(!confirm("수정하시겠습니까?")){
   			e.preventDefault()
   		}else{
	   		$.ajax({
	     		url:"/custom/update",
	     		type:"post",
	     		data : { "BUSI_NUM" : $("#busiNum").val()
	     				,"CUSTOM" : $("#custom").val()
	     				,"SHORT" : $("#short").val()
	     				,"CEO": $("#ceo").val()
	     				,"CHARGE_PERSON": $("#chargePerson").val()
	     				,"BUSI_CONDITION": $("#busiCondition").val()
	     				,"ITEM": $("#item").val()
	     				,"POST_NUM": $("#postNum").val()
	     				,"ADDR1": $("#addr1").val()
	     				,"ADDR2": $("#addr2").val()
	     				,"TEL":$("#tel").val()
	     				,"FAX":$("#fax").val()
	     				,"HOMEPAGE":$("#homepage").val()
	     				,"CO_YN" : $("input[name='CO_YN']:checked").val()
	     				,"FOREIGN_YN" : $("input[name='FOREIGN_YN']:checked").val() 
	     				,"TAX_YN" : $("#taxYn option:selected").val()
	     				,"COUNTRY_ENG" : $("#countryEng").val()
	     				,"COUNTRY_KOR" : $("#countryKor").val()
	     				,"SPECIAL_RELATION" : $("input[id='specialRelation']:checked").val()
	     				,"TRADE_STOP" : $("input[id='tradeStop']:checked").val()
	     				,"CONTRACT_PERIOD_S" : $("#contractPeriodS").val()
	     				,"CONTRACT_PERIOD_E" : $("#contractPeriodE").val()
	     				,"MOD_INFO_MAN" : $("#modInfoMan").val()
	     				,"MOD_INFO_DATE": $("#modInfoDate").val()
	     			},
	     		success : function(result){
	     			console.log(result)
	   			}
	     	})
			
			$.ajax({
	    		url:"/account/update",
	    		type:"post",
	    		data : { "BUSI_NUM" : $("#busiNum").val(),
	    				"FACTORY" :$("#factory").val(),
	    				"TRADE_BANK" :$("#tradeBank").val(),
	    				"ACCOUNT_NUM" :$("#accountNum").val()
	  			},success: function(result){
	  					console.log(result)
	  			}
	    	})
	    		alert("수정되었습니다")
	    		location.reload(true)
    	}
 	});
 	
 	 $("#deleteBtn").on("click",function(e){	
 	 if(!confirm("삭제하시겠습니까?")){
 	 	e.preventDefault()
 	 }else{
 	 	 	$.ajax({
	 	 		url:"/custom/delete",
	 	 		type:"post",
	 	 		data: {"BUSI_NUM":$("#busiNum").val()},
	 	 		success:function(result){
	 	 		}
	 	 	})
	 	 	$.ajax({
	 	 		url:"/account/delete",
	 	 		type:"post",
	 	 		data: {"BUSI_NUM":$("#busiNum").val()},
                success:function(result){
	 	 		
	 	 		}
	 	 	})
	 	 		alert("삭제되었습니다")
	 	 		location.href="/";
	 	 }
	 });
	 	
 });
</script>
</html>