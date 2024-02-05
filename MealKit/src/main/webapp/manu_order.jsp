<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- DB와 연결 -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.lang.Exception, java.sql.SQLException" %>
<%@ page import="utils.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제조 지시</title>
	 <!-- 부트스트랩 연결 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<!-- reset.css 연결 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
	<!-- main.css 연결 -->
	<link rel="stylesheet" href="./css/main.css" />
	<!-- format.css 연결 -->
	<link rel="stylesheet" href="./css/manu_order.css" />
	
	<!-- google font & google material icon -->
  <!-- Google 나눔고딕 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	<!-- jQuery 연결 -->
	<script defer src="./js/jquery-3.7.1.min.js"></script>
	<script defer src="./js/main.js"></script>
</head>
<body>
	<!-- header 공통 부분 연결 -->
	<%@ include file="header.jsp" %>
	
	<!-- ============================================================================== -->
	
	<!-- 본인 컨텐츠는 여기서 쓰면 됩니다 -->
	<div class="subject">
		<p>제조지시서</p>
	</div>
	<div class="manufaturing">
		<%
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			connection = DBConfig.getConnection();
			System.out.println("접속성공");
		} catch(SQLException se) {
			System.out.println("접속실패");
		}
	%>
	<div class="manu_container">
	<div class="prod_table">
	<table>
		<tr>
			<th>제품번호</th>
			<th>제품명</th>
			<th>제품수량</th>
		</tr>
		<%
					try{
						String sql = "SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_QUANTITY FROM FINISHED_PRODUCT ORDER BY PRODUCT_ID ASC";
						stmt = connection.createStatement();
						rs = stmt.executeQuery(sql);
			
						while(rs.next()) {
							int Product_id = rs.getInt("PRODUCT_ID");
							String Product_name = rs.getString("PRODUCT_NAME");
							int Product_quantity = rs.getInt("PRODUCT_QUANTITY");
							%>
							<tr>
								<td><%= Product_id %></td>
								<td><%= Product_name %></td>
								<td><%= Product_quantity %></td>
							</tr>
							<%
						}
						rs.close();
						stmt.close();
					} catch(Exception e) {
						
					}
				%>	
	</table>
	</div>
			<div class="lot_table">
				<table>
					<tr>
					<th>Lot번호</th>
					<th>제품번호</th>
					<th>Lot Size</th>
					<th>생산일</th>
					<th>제출버튼</th>
				</tr>
				<form action="insert_production_order.jsp" method="post">
					<tr>
						<td><input type="text" class="inputField" name="lotId" placeholder="Lot번호"></td>
						<td><input type="text" class="inputField" name="productId" placeholder="제품번호"></td>
						<td><input type="text" class="inputField" name="lotSize" placeholder="Lot Size"></td>
						<td><input type="date" class="inputField" name="productionDate" placeholder="생산일"></td>
						<td><button id="submitBtn">제출</button></td>
					</tr>
				</form>
				<%
					try{
						String sql = "SELECT LOT_ID, PRODUCT_ID, LOT_SIZE, PRODUCTION_DATE FROM PRODUCTION_ORDER ORDER BY LOT_ID DESC";
						stmt = connection.createStatement();
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							int Lot_id = rs.getInt("LOT_ID");
							int Product_id = rs.getInt("PRODUCT_ID");
							int Lot_size = rs.getInt("LOT_SIZE");
							String Production_date = rs.getString("PRODUCTION_DATE");
							%>
							<tr>
								<td><%= Lot_id %></td>
								<td><%= Product_id %></td>
								<td><%= Lot_size %></td>
								<td><%= Production_date %></td>
								<td></td>
							</tr>
							<%
								}
							rs.close();
							stmt.close();
							} catch(Exception e){
								
							}
				%>
				</table>
			</div>
			</div>
			</div>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#submitBtn').prop('disabled', true);
			function checkInputFields() {
				var allFilled = true;
				$('.inputField').each(function() {
					if ($(this).val() === '') {
						allFilled = false;
						return false;
					}
				});
				$('#submitBtn').prop('disabled', !allFilled);
			}
			$('.inputField').keyup(function() {
				checkInputFields();
			});
			$('input[type=date].inputField').on('input', function() {
	      checkInputFields();
	    });
		});
		window.onload = function() {
			var status = new URL(window.location.href).searchParams.get('status');
			switch(status) {
            case 'success':
                break;
            case 'error':
                alert('지시 추가가 실패했습니다.');
                break;
            case 'productNotFound':
                alert('상품이 존재하지 않습니다.');
                break;
            case 'invalidLotSize':
                alert('유효한 Lot Size를 입력하시오.');
                break;
            default:
        }
			window.history.replaceState({}, document.title, window.location.pathname);
		};
	</script>
		<!-- ============================================================================== -->
	
	<!-- footer 공통 부분 연결 -->
	<%@ include file="footer.jsp" %>
</body>
</html>
