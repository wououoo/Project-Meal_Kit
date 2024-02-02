<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!-- DB와 연결 -->
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.lang.Exception, java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트 관리 시스템</title>
	 <!-- 부트스트랩 연결 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<!-- reset.css 연결 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
	<!-- main.css 연결 -->
	<link rel="stylesheet" href="./css/main.css" />
	<!-- BOM_list.css 연결 -->
	<link rel="stylesheet" href="./css/BOM_list.css" />
	
	<!-- google font & google material icon -->
  <!-- Google 나눔고딕 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	
	<!-- Google material 아이콘 -->
  <!-- 아이콘을 이미지가 아닌, 폰트처럼 사용 가능함 -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  
	<!-- jQuery 연결 -->
	<script defer src="./js/jquery-3.7.1.min.js"></script>
	<script defer src="./js/main.js"></script>
</head>
<body>
	<!-- header 공통 부분 연결 -->
	<%@ include file="header.jsp" %>
	
	<!-- ============================================================================== -->
	
	<!-- BOM 현황 -->
	<section>
		<div class="main_wrap">
			<div class="inner main_tit">
				<h1>BOM 현황</h1>
			</div>
			<div class="inner prod_search">
				<!-- 제품검색 tit & search 아이콘 -->
				<div class="prod_search_tit">
					<div>제품검색</div>
					<div class="search">
						<span class="material-symbols-outlined">
							<!-- ★★★ # 에 검색 메소드 연결할 것 -->
							<a href="#">Search</a>
<%
	/* JSP에서는 DB 연결하는 코드를 입력했으나, 
	utils에 java 파일 만들었으니, 그것을 사용할 것 */
	/* 메소드도 만들어서 그 파일을 사용해볼 것 */
	/* 키워드 검색 순서
		1. DB 접속 => java - utils폴더 - DBManager.java 사용
		2. user가 키워드를 선택 후, 검색 icon을 누르면 그 값과 동일한 목록을 조회해야 함
			1) 제품코드, 제품명, 재료코드, 재료명 中 1개라도 있어야 select 함
			2) 4가지 모두 선택하지 않았을 때, icon 누르면 alert('선택된 키워드가 없습니다.');
			3) 2개 이상 선택하면, && 조건으로 조회 가능하도록 할 것
			4) 위의 조건에 해당하지 않지만, 검색된 결과가 없는 경우,
				 alert('검색된 결과가 없습니다.');
	*/
	
%>
						</span>
					</div>
				</div>
				<!-- 검색목록 및 입력칸 -->
				<div class="inner search_input">
					<!-- 제품명 & 제품규격(ex:2인) -->
					<div class="prod_search_input">
						<h3>제품명</h3>
						<!-- 선택목록: 부트스트랩 - 셀렉트에서 가져옴 -->
						<!-- ★★★ value에 검색값 링크할 것★★★ -->
					  <!-- ★★★ DB에서 제품명, 제품규격, 재료명 가져오기 -->
						<select class="form-select" aria-label="Default select example">
						  <option selected>제품명 선택</option>
						  <option value="#">DB에서 제품명 가져오기</option>
						</select>
						<h3>제품규격</h3>
						<select class="form-select" aria-label="Default select example">
						  <option selected>제품규격 선택</option>
						  <option value="#">DB에서 제품규격 가져오기</option>
						</select>
					</div>
					<!-- 재료명 -->
					<div class="mat_search_input">
						<h3>재료명</h3>
						<select class="form-select" aria-label="Default select example">
						  <option selected>재료명 선택</option>
						  <option value="#">DB에서 재료명 가져오기</option>
						</select>
					</div>
				</div>
			</div>
			
			<!-- BOM 목록 조회, 수정, 삭제 -->
			<div class="inner BOM_list">
				<!-- 삭제 버튼 -->
				<div class="bom_delete">
					<!-- ★★★ #에 삭제 메소드 링크할 것 -->
					<a class="delete" href="#">삭제</a>
				</div>
				<!-- BOM 목록 -->
				<div class="detail_list">
					
				</div>
			</div>
			
		</div>
	</section>
	
	<!-- ============================================================================== -->
	
	<!-- footer 공통 부분 연결 -->
	<%@ include file="footer.jsp" %>
</body>
</html>