package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;	// 3. DB 쿼리문 사용
import java.sql.ResultSet;			// 4. DB 쿼리문 수행 결과
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import dto.FinishedProductVo;
import utils.DBManager;

public class Prod_select {

	public static void main(String[] args) {
		// 실행내용
		prod_nm();

	}
	
	// 모든 제품명 조회 => 제품 검색을 위함
	public static void prod_nm() {
		String sql = null;
		
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = null;
		
		FinishedProductVo pVo = new FinishedProductVo();
		
		try {
			/*
			 * stmt = conn.createStatement(); // 2-1. Statement 생성 
			 * rs = stmt.executeQuery("SELECT NUM, SUBJECT, HIT, REGDATE FROM BO_FREE WHERE SUBJECT LIKE '%" + searchText + "%' ORDER BY NUM DESC fetch first 5 rows only"); // 2-2. SQL 쿼리 실행
			 */	
			sql = "SELECT product_nm FROM Finished_Product";
			
			conn = DBManager.getConnection();		// DB 연결
			System.out.println("오라클 접속 성공");
			stmt = conn.createStatement();			// Statement 생성
			rs = stmt.executeQuery(sql);			// SQL 쿼리 실행
			
			/* 
			pstmt = conn.prepareStatement(sql);		// 쿼리문 실행
			rs = pstmt.executeQuery();				// 쿼리문 결과 처리
			*/			
		} catch (Exception e) {
			System.out.println("오라클 접속 오류: " + e);
		}
		DBManager.close(conn, pstmt, rs);		// DB 닫기
		
		
	}

}
