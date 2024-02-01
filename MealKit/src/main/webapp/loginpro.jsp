<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.script.ScriptContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- import -->    
<%@ page import="utils.*"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 로그인 연결 -->
<h2>사용자 인증 처리</h2>
   <%
      String empid = request.getParameter("empId");
      String emppw = request.getParameter("empPw");
      
      Connection connection = null;    		  // DB 접속 성공 시 접속 정보 저장
      PreparedStatement ps = null;   		  // 쿼리를 실행하기 위한 객체 정보
      ResultSet rs = null;            		  // select 결과를 저장하는 정보
      
      // DB 접속
      try {
    	 connection = DBConfig.getConnection();
         System.out.println("접속 성공");
      } catch(Exception se) {
         System.out.println("접속 실패");
      }
      
      // 아이디 비밀번호 체크 코드
      int result = 0;
      try {
         String sql = "SELECT COUNT(*) AS CNT FROM EMPLOYEES WHERE EMP_ID=? AND EMP_PW=?";
         ps = connection.prepareStatement(sql);
         ps.setInt(1, Integer.valueOf(empid));
         ps.setString(2, emppw);
         rs = ps.executeQuery();   // executeQuery: Select 경우
         
         while(rs.next()) {
            result = rs.getInt("CNT");
            System.out.println("결과 result: " + result);   // 1이면 id/pw가 존재, 아니면 존재하지 않음
         }
         
         if(result == 1){	// 로그인 성공 -> main.jsp
        	 out.println("<script>location.href='index.jsp' </script>");
         } else {	// 로그인 실패 => loginform.jsp
   %>
   				<script>alert("로그인 실패")</script>
   <%    
        	out.println("<script> location.href='login.jsp' </script>");
         }
      } catch(SQLException se) {
         
      }
      
   %>

</body>
</html>