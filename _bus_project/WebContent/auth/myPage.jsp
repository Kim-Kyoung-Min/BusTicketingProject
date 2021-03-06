<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<style>
     .content{width:1000px;margin: 40px auto 0;}
    h1{margin: 0 auto; font-size:25px; margin-bottom: 5px;text-align: left;}
    .table{border-spacing: 0; margin-bottom:30px;}
    .table th{background-color: #fbfbfb;padding: 10px 10px; border-bottom:1px solid #e7e7e7; width: 100px;}
    .table td{ border-bottom:1px solid #e7e7e7;padding:0px 0px 0px 20px;}
    .table #first{border-top:2px solid #e5e5e5;}
    .table #last{border-bottom:2px solid #e5e5e5;}
    .input{width:300px;text-align: center;border:none; border-right:0px; border-top:0px; border-left:0px; border-bottom:0px;}
    .no-border{border:0px;}
    input:focus{outline: none;}
    .table {margin: 0 auto;border-collapse: collapse;border-top: 3px solid #168;width: 1000px;}  
    .table th {color: #168;background: #f0f6f9;text-align: center;}
    .table th, .table td {padding: 10px;border: 1px solid #ddd;}
    .table th:first-child, .table td:first-child {border-left: 0;}
    .table th:last-child, .table td:last-child {border-right: 0;}
    .table tr td:first-child{text-align: center;}
    .table caption{caption-side: bottom; display: none;}
    #table_bottom{
        margin-bottom: 10px;
    }
    /*조회*/
.dropdown {
  display: inline-block;
  position: relative;
  overflow: hidden;
  height: 28px;
  width: 150px;
  background: #f2f2f2;
  border: 1px solid;
  border-color: white #f7f7f7 #f5f5f5;
  border-radius: 3px;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
}
.dropdown2 {
  display: inline-block;
  position: relative;
  overflow: hidden;

}

.dropbutton {
    height: 28px;
  width: 50px;
  background: #317d97;
  border: 1px solid;
  border-color: white #f7f7f7 #f5f5f5;
  border-radius: 3px;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
  color:white;}
.dropdown-input {display: inline-block;position: relative;overflow: hidden; height: 28px;
  width: 150px; background: #f2f2f2; border: 1px solid; border-color: white #f7f7f7 #f5f5f5; border-radius: 3px;
  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);}
.dropdown:before, .dropdown:after {content: ''; position: absolute; z-index: 2; top: 9px;  right: 10px; width: 0; height: 0; border: 4px dashed; border-color: #888 transparent;
  pointer-events: none;}
.dropdown:before { border-bottom-style: solid; border-top: none;}
.dropdown:after { margin-top: 7px; border-top-style: solid; border-bottom: none;}
.dropdown-select { position: relative; width: 130%; margin: 0; padding: 6px 8px 6px 10px; height: 28px; line-height: 14px; font-size: 12px; color: #62717a;
  text-shadow: 0 1px white; background: #f2f2f2; background: rgba(0, 0, 0, 0) !important; border: 0; border-radius: 0; -webkit-appearance: none;}
.dropdown-select:focus { z-index: 3;  width: 100%; color: #394349; outline: none; outline-offset: -2px;}
.dropdown-select > option { margin: 3px; padding: 6px 8px; text-shadow: none; background: #f2f2f2; border-radius: 3px; cursor: pointer;}
.lt-ie9 .dropdown { z-index: 1;}
.lt-ie9 .dropdown-select {z-index: -1;}
.lt-ie9 .dropdown-select:focus { z-index: 3;}
@-moz-document url-prefix() { .dropdown-select { padding-left: 6px; }}
.dropdown2 { display: inline-block; position: relative; overflow: hidden;}
.dropbutton {height: 28px; width: 50px;background: #317d97;border: 1px solid; border-color: white #f7f7f7 #f5f5f5; border-radius: 3px;  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);  color:white;}
.in-logo{   font-size: 26px; margin-right: 15px;vertical-align: middle;}
.vertical{vertical-align: top; padding-right: 2px;}
.text{ margin: 0px 0px 7px 0px; font-size:13px; color: #666;}
#mg_top{margin-top: 15px;}
.arrive{text-align: center;}
</style>
</head>
<body>
    <div class="content">
  	 <h1><span class="in_logo"><img src="logo.png" class="vertical"></span>회원정보</h1>
    <form method='get'>
    <table class="table" id="table_bottom">
        <tr>
            <th>이메일</th>
            <td><input type='text' name='email' value='${bus.email}' class="no-border"></td>
        </tr>
        <tr>
            <th id="last">이름</th>
            <td id="last"><input type='text' name='name' value='${bus.bname}' class="no-border"></td>
        </tr>
    </table>
    </form>
	
	<p class="text">ㆍ버스번호를 선택해주세요</p>
	<form action="searchMypage.do" method="post">
	  <div class="dropdown">
			<select name="busNo" id="busNo" class="dropdown-select">
				<option value="">버스번호</option>
				<option value="1001">1001</option>
				<option value="1002">1002</option>
				<option value="1003">1003</option>
				<option value="1004">1004</option>
				<option value="1005">1005</option>
				<option value="1006">1006</option>
				<option value="1007">1007</option>
				<option value="1008">1008</option>
			</select>
			</div>
               <div class="dropdown2">
            <button type="submit" class="dropbutton" >조회</button>
            </div>
	</form>
           <h1 id="mg_top"><span class="in_logo"><img src="logo.png" class="vertical"></span>운행 리스트</h1>
	<table class="table">
		<tr>
			<th>출발일</th>
			<th>출발지-도착지</th>
			<th>출발시간</th>
			<th>도착시간</th>
			<th>버스번호</th>
		</tr>
		<c:forEach var="list" items="${test}">
			<tr>
				<td class="arrive">${list.departureDate}</td>
				<td class="arrive">${list.departure} ▶   ${list.arrive}</td>
				<td class="arrive">${list.departureTime}</td>
				<td class="arrive">${list.arriveTime}</td>
				<td class="arrive">${list.busNo}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>