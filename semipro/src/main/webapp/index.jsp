<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트 관리 시스템</title>

	<!-- reset.css 연결 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
	<!-- main.css 연결 -->
	<link rel="stylesheet" href="./css/main.css" />
	
</head>
<body>
	<!-- 공통 header 부분 -->
	<%-- <%@ include file="header.jsp" %> --%>
	<header>
        <div id="logo">
            <img src="company_logo.png" alt="회사 로고">
        </div>
        <div id="companyInfo">
            <h1>회사명</h1>
            <nav>
                <ul>
                    <li><a href="#purchase">구매관리</a></li>
                    <li><a href="#manufacturing">제조관리</a></li>
                    <li><a href="#sales">영업관리</a></li>
                    <li><a href="#hr">인사관리</a></li>
                </ul>
            </nav>
        </div>
        <div id="login">
            <a href="#">로그인</a>
        </div>
    </header>

		<!-- main 부분 -->
    <main>
        <div id="sideMenu">
            <ul>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">오늘의 뉴스</a></li>
                <li><a href="#purchase">구매관리</a></li>
                <li><a href="#manufacturing">제조관리</a></li>
                <li><a href="#sales">영업관리</a></li>
                <li><a href="#hr">인사관리</a></li>
            </ul>
        </div>
        <div id="mainContent">
            <img src="main_image.jpg" alt="대표 이미지">
            <section id="notices">
                <h2>공지사항</h2>
                <ul>
                    <li><a href="#">제목 1</a></li>
                    <li><a href="#">제목 2</a></li>
                    <li><a href="#">제목 3</a></li>
                </ul>
            </section>
            <section id="news">
                <h2>오늘의 뉴스</h2>
                <ul>
                    <li><a href="#">제목 1</a></li>
                    <li><a href="#">제목 2</a></li>
                    <li><a href="#">제목 3</a></li>
                </ul>
            </section>
        </div>
    </main>
    
    <!-- 공통 footer 부분 -->
		<%-- <%@ include file="footer.jsp" %> --%>
		<footer>
        <p>주소: 회사 주소</p>
        <p>이메일: info@company.com</p>
        <p>전화번호: 123-456-7890</p>
    </footer>
</body>
</html>