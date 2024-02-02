package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;	// 3. DB 쿼리문 사용
import java.sql.ResultSet;			// 4. DB 쿼리문 수행 결과
import java.util.ArrayList;
import java.util.List;

import dto.BomVo;
import dto.FinishedProductVo;
import dto.MaterialVo;
import utils.DBManager;

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

public class BOM_select {

	public static void main(String[] args) {
		// 실행 내용
		/* BOM_list(); */

	}
	
	// BOM_list => bom_id에 값 INSERT
	public static void BOM_list() {
		// 컬렉션(3): List컬렉션 => 배열처럼 인덱스번호로 데이터를 저장, 로드 가능
		// 관련함수:
//		1. list.add(객체값);			=> 데이터 객체 추가
//		2. list.remove(인덱스번호);		=> 데이터 객체 추가
//		3. list.get(인덱스번호);		=> 데이터 객체 로드
//		4. list.size();					=> 데이터 객체 크기 조회
		
		// 인터페이스 변수 = 구현객체;
		List list = new ArrayList();	// ArrayList 객체 생성
		
		BomVo bVo = null;
		for(int i=0; i<3; i++) {
			bVo = new BomVo();
			bVo.setBom_id(i);	// id에 데이터 저장
			// bVo.setBom_nm("이름" + i);	// 이런 컬럼은 없지만, 이런식으로 데이터 저장함
			
			list.add(bVo);	// 1. 데이터 객체 추가
		}
		// list.remove(0);		// 2. 데이터 객체 삭제(인덱스)
		
		int size = list.size();	//. 4. 데이터 크기 조회
		/* System.out.println(size); */
		
		BomVo bVo1 = null;
		for(int i=0; i<size; i++) {
			bVo1 = new BomVo();
			bVo1 = (BomVo) list.get(i);		// 3. 데이터 객체 로드
			/* DB 연결 및 작동 성공 확인함 => 코드 수정해서 사용할 것
			 System.out.println("BOM id " + i + ": ");
			 System.out.println(bVo1.getBom_id()); System.out.println("제품: " + i + ": ");
			 System.out.println(bVo1.getBom_prod_quantity());
			 System.out.println("재료: " + i + ": "); 
			 System.out.println(bVo1.getMaterial_id());
			 */
		}
	}
	
	// 웹에서 입력할 값
	/* 
		1. Finished_Product 테이블
			1) 제품명(product_nm)
	 		2) 규격(product_specification)
	 	2. Material 테이블
	 		1) 재료명(material_nm)
	*/
	
	// BOM 현황 모든 내역 조회
	/* 조회에 불러올 내용
	 	1. BOM 테이블bom_id
	 		1) BOM코드(bom_id)
	 		2) 단위(quantity_units)
	 		3) 수량(bom_prod_quantity)
	 	2. Finished_Product 테이블
	 		1) 제품코드(product_id)
	 		2) 제품명(product_nm)
	 		3) 규격(product_specification)
	 	3. Product_Order 테이블
	 		1) LOT 사이즈(lot_size)
	 	4. Material 테이블
	 		1) 구분(material_classification)
	 		2) 재료코드(material_id)
	 		3) 재료명(material_nm)
	*/
	
	// 로직
	/*
		1. 제품명(product_nm)만 입력 선택했을 때, 해당 내용 조회 함수
		2. 제품 규격(product_specification)만 선택했을 때, 해당 내용 조회 함수
		3. 재료명(material_nm)만 선택했을 때, 해당 내용 조회 함수
		
		
	*/
	
	/* ==================================== */
	// 제품명을 선택하여 조회하는 함수
	public static void selectBOM_P(String product_nm) {
		
	}

}
