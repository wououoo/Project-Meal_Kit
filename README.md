# JSP를 이용한, 밀키트 제조업체를 위한 웹 솔루션 개발
![image](https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/71fc3003-6628-40fd-a6d9-76919a0e7438)

<br>

## 📌 목차
1. [🖥️ 프로젝트 개요](#프로젝트-개요)
2. [📕 주요기능](#주요기능)
3. [🔧 아키텍처](#아키텍처)
4. [🏗️ ERD](#erd)
5. [⚠️ 트러블 슈팅](#트러블-슈팅)
6. [📽️ 작동 영상](#작동-영상)
   <br><br>

## 🖥️ 프로젝트 개요
### ⏲️ 프로젝트 개발 기간
  - 2024.01.29 ~ 2024.02.14
    ![image](https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/6004bb2e-135e-492c-ba36-67674976b6a0)

### 🔖프로젝트 주제
  - 대상: 밀키트 제조업을 경영하는 가상의 기업 선정
  - 용도: 구매 → 생산 → 판매 프로세스를 효율적, 체계적으로 관리할 수 있는 시스템
  - 개발: JSP로 만든 코드를 SpringBoot(Maven Project)로 수정하여 웹 솔루션 개발
### 📁프로젝트 구현 내용
  - 제조 회사의 구성원 별 권한 제한 및 프로세스 별 데이터의 CRUD 기능 구현
### ⚙ 개발환경 및 도구
  - `JAVA 17`
  - `JDK 17.0.2`
  - **IDE**: IntelliJ
  - **Framework**: Springboot(3.1.10)
  - **DataBase**: Oracle DB(ojdbc8)
  - **ORM**: Mybatis
  - **DevOps**: Maven, Git, GitHub
  - **Tools**: Discord, GoogleDrive, StarUML
### 🧑‍🤝‍🧑 멤버 구성
|팀원명|프로필|담당업무|
|---|---|---|
|[김영범<br>(팀장)](https://github.com/blanchit)|<p align="center"><img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/1c2ddcb9-00a5-4f01-adbf-70476726e1c1" width="100"></p>|판매관리 - 프로젝트 구성 및 개발 범위 기획<br>판매 주문서 CRUD|
|[조다혜<br>(팀원)](https://github.com/ChoDaHye)|<p align="center"><img src="https://avatars.githubusercontent.com/u/151722511?v=4" width="100"></p>|메인메뉴, 공지사항 CRUD<br>인사관리 - 로그인 화면, 마이페이지(비밀번호 변경)|
|[우경주<br>(팀원)](https://github.com/wououoo)|<p align="center"><img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/2bdb07d5-ae47-44f5-89dd-6335d7030ca3" width="100"></p>|구매 시스템 설계<br>구매관리 - 공급업체 및 원자재 데이터 베이스 작성|
|[정수하<br>(팀원)](https://github.com/heyJSH)|<p align="center"><img src="https://avatars.githubusercontent.com/u/150403977?v=4" width="100"></p>|공유 드라이브/깃허브 관리<br>테이블 설계 및 ERD 작성<br>제조관리 - BOM CRUD|
|[진재원<br>(팀원)](https://github.com/jinjw98?tab=overview&from=2024-04-01&to=2024-04-30)|<p align="center"><img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/11e3b565-bdbc-413d-97a4-89b32a34a785" width="100"></p>|제조 시스템 설계<br>제조관리 - 제조 지시서 CRUD, 제조 수행 CRUD<br>사원관리|

<br><br>


## 📕 주요기능
밀키트를 생산/제조하는 업체에서 자원관리를 위해 사용하는 프로그램을 제공한다.
<details>
  <summary><b>1. 로그인 & 접근제한</b> (👈 Click)</summary>
  <br>
  <div markdown="1">
    <ul>
      <li>직원 번호가 데이터에 있으면 로그인이 가능하다.</li>
      <li>부서별 접근 가능한 페이지가 다르다.
        <ol>
          <li>
            ex1) 생산팀은 로그인 시 `재고현황`, `제조관리`만 보여준다. <br>
            <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/83eb1444-d06f-4b7c-a750-cfb08b1dee16" alt="생산팀 접근가능한 메뉴">
          </li>
          <li>
            ex2) 관리팀은 모든 페이지에 접근할 수 있다. <br>
            <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/2c487107-703d-44df-b55d-2712ea79ae70" alt="관리팀 접근가능한 메뉴">
          </li>
        </ol>
      </li>
    </ul>
  </div>
</details>

<details>
  <summary><b>2. 마이페이지</b> (👈 Click)</summary>
   <br>
  <div markdown="1">
    <ul>
      <li>'직원이름'과 '직원아이디'는 수정할 수 없다.</li>
      <li>'비밀번호', '전화번호'는 수정할 수 있다.
        <ol>
          <li>
            비밀번호, 전화번호 수정 시 포맷을 맞추도록 했다. <br>
            <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/7449c4dd-4328-4408-9483-82ddf8c29686" alt="직원정보수정">
          </li>
        </ol>
      </li>
    </ul>
  </div>
</details>

<details>
  <summary><b>3. 공지사항</b> (👈 Click)</summary>
   <br>
  <div>
    <ul>
      <li>'공지사항'에서 제목을 검색할 수 있다.</li>
      <li>title을 누르면 해당 글을 수정할 수 있다.</li>
    </ul>
    <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/151722511/8aa1c6e0-36c0-4665-b32f-3835c3501ef6" alt="공지사항 이미지">
  </div>
</details>

<details>
  <summary><b>4. 사원관리</b> (👈 Click)</summary>
   <br>
  <div markdown="1">
    
  </div>
</details>

<details>
  <summary><b>5. 재고현황</b> (👈 Click)</summary>
   <br>
  <div markdown="1">
    
  </div>
</details>

<details>
  <summary><b>6. 제조관리 - BOM 관리</b> (👈 Click)</summary>
   <br>
  <div markdown="1">
     <h3>BOM 현황</h3>
    <ul>
       <li>
          <b>BOM 현황에서 [BOM 검색 및 조회], [BOM 수정], [BOM 삭제]를 할 수 있다.</b>
       </li>
       <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/3004b0db-c451-4554-989a-df53172963e1" alt="BOM 현황">
       <li>
          <b>BOM 현황 - BOM 검색 및 조회</b>
       </li>
       <ol>
          <li>select box의 option을 선택 → 검색 버튼을 누르면 해당하는 목록을 조회할 수 있다.</li>
          <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/bce88b20-6bc8-48d5-a64e-6b3112e43f63" alt="BOM 검색 및 조회">
       </ol>
       <li>
          <b>BOM 현황 - BOM 수정</b>
       </li>
       <ol>
          <li>원하는 행의 [수정] 버튼을 누르면 동적인 Form에서 수정할 수 있다.</li>
          <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/c4bb8b4b-b134-4b02-ba7a-5504034e18e8" alt="BOM 수정">
       </ol>
       <li>
          <b>BOM 현황 - BOM 삭제</b>
       </li>
       <ol>
          <li>원하는 행을 선택 후, [삭제] 버튼을 누르면 삭제할 수 있다.</li>
          <img src="https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/cbb799ab-51d8-4c3b-8092-e90e217d2a01" alt="BOM 삭제">
       </ol>
    </ul>
  </div>
</details>

<details>
  <summary><b>7. 제조관리 - 제조지시 및 제조수행</b> (👈 Click)</summary>
   <br>
  <div markdown="1">
    
  </div>
</details>

<details>
  <summary><b>8. 판매관리</b> (👈 Click)</summary>
   <br>
  <div markdown="1">
    
  </div>
</details>
<br><br>

## 🔧 아키텍처
![image](https://github.com/heyJSH/Project-Meal_Kit/assets/151722511/c95a5896-9d37-44d8-a89f-034644dfeea4)
<br><br>

## 🏗️ ERD
DB와 ERD <br>
![image](https://github.com/heyJSH/Project-Meal_Kit_SpringBoot/assets/150403977/bcbfa9be-686b-4970-81d5-977aa1d2e7b5)
<br><br>

## ⚠️ 트러블 슈팅
<br><br>

## 📽️ 작동 영상
[[📹 작동 영상]](https://drive.google.com/file/d/12LwcEgv2JtFC25zAbUwQ4FCezuiNiI1k/view?usp=sharing)
<br><br>
