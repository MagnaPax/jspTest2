<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 공통부분 헤더를 잘라서 개별 파일로 만듬 -->
<%@ include file="include/header.jsp" %>

<!-- masthead를 잘라서 개별로 만듬 -->
<%@ include file="include/mastheader.jsp" %>

<!-- about section 잘라내서 개별로 만듬 -->
<%@ include file="include/aboutSection.jsp" %>

<!-- contact section 잘라내서 개별로 만듬 -->
<%@ include file="include/contactSection.jsp" %>

<!-- footer 잘라내서 개별로 만듬 -->
<%@ include file="include/footer.jsp" %>




        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row">

                    
<%
// portfolio 부분을 클릭해서 잘 보면 제목 사진 내용 이 세 부분이 계속 반복. 
// 반복되는 부분을 줄여서 만들기 위해 
String mid="portfolioModal1";
String mtitle="인사관리시스템(Java)";
String mcontent="Java 를 사용하여 인사관리 시스템과 jsp를 사용하여 포트폴리오 관리 페이지를 작성";
String mpic="assets/img/portfolio/cabin.png";
%>            
<!-- modal1 잘라내서 개별로 만듬 -->                    
<%@ include file="include/modal1.jsp" %>

                    
<%
// portfolio 부분을 클릭해서 잘 보면 제목 사진 내용 이 세 부분이 계속 반복. 
// 반복되는 부분을 줄여서 만들기 위해 
mid="portfolioModal2";
mtitle="주가 분석 스크래이핑(Python)";
mcontent="파이썬을 활용하여 KOSPI 데이터를 추출하고 정제하는 프로젝트";
mpic="assets/img/portfolio/cake.png";
%>            
<!-- modal2 잘라내서 개별로 만듬 -->                    
<%@ include file="include/modal1.jsp" %>

                    
<%
// portfolio 부분을 클릭해서 잘 보면 제목 사진 내용 이 세 부분이 계속 반복. 
// 반복되는 부분을 줄여서 만들기 위해 
mid="portfolioModal3";
mtitle="머신러닝(Sci-Kit)";
mcontent="머신러닝을 활용한 부동산 급등지역 분석 시각화";
mpic="assets/img/portfolio/circus.png";
%>            
<!-- modal2 잘라내서 개별로 만듬 -->                    
<%@ include file="include/modal1.jsp" %>
                    

 
 
 
 
                    
                </div>
            </div>
        </section>
<%@ include file="include/aboutSection.jsp" %><%----%>
<%@ include file="include/contactSection.jsp" %><%----%>
<%@ include file="include/footer.jsp" %><%----%>
<%@ include file="include/base.jsp" %><%----%>
 
 
 

