package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;	// 3. DB 쿼리문 사용
import java.sql.ResultSet;			// 4. DB 쿼리문 수행 결과
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
	
	// 모든 제품명 조회
	public static void prod_nm() {
		List list = new ArrayList();	// ArrayList 객체 생성
		
		FinishedProductVo pVo = null;
		
		
		FinishedProductVo pVo1 = null;
		int size = list.size();		// 데이터 크기 조회
		for(int i=0; i<size; i++) {
			pVo1 = new FinishedProductVo();
			pVo1 = (FinishedProductVo) list.get(i);	// 데이터 객체 로드
		}
	}

}
