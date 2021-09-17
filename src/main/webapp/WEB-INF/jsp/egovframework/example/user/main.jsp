<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../userframe/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../userframe/top.jsp"></jsp:include>
	<div class="body">
		<div class="main">
			<img src="../webflow/images/Blending_background.png" sizes="100vw" srcset="../webflow/images/Blending_background-p-500.png 500w, ../webflow/images/Blending_background-p-800.png 800w, ../webflow/images/Blending_background-p-1080.png 1080w, ../webflow/images/Blending_background-p-1600.png 1600w, ../webflow/images/Blending_background.png 1920w" alt="" class="image">
			<div class="toptextbox">
				<div class="div-block-68">
					<img src="../webflow/images/Blending_illustration2.png"
						loading="lazy" alt="" class="image-28">
					<div class="div-block-69">
						<div class="toptext">WE MAKE</div>
						<div class="toptext-copy">DIFFERENCE</div>
					</div>
				</div>
				<img src="../webflow/images/Blending_illustration1.png" loading="lazy" sizes="(max-width: 767px) 57vw, 650px" srcset="../webflow/images/Blending_illustration1-p-500.png 500w, ../webflow/images/Blending_illustration1.png 650w" alt="" class="image-29">
			</div>
		</div>
		<div class="about">
			<div class="title">
				<strong class="bold-text-4">About blending</strong>
			</div>
			<div class="abouttext">
				<div class="mitext">
					웹사이트, 게임, 모바일 제작 및 컨설팅 등 고품질 제작과 최상의 서비스를 제공하도록 노력하고 있습니다.<br>‍<br>고객과
					소비자의 니즈와는 상관없이 화려한 기술과 실속 없는 결과물 위주의 기존 방식을 지양하고, <br>모두가 최고의
					경험을 할 수 있는 결과물을 만들기 위해 고객사와의 소통을 중점으로 함께 만들어가는 업무방식을 지향합니다.
				</div>
			</div>
			<div class="btn">
				<a href="/cong/user/about.do" class="btnlink-copy w-inline-block">
					<div class="more">VIEW ABOUT  BLENDING</div>
				</a>
			</div>
		</div>
		<div class="portfolo">
			<div class="title">
				<strong class="bold-text-6">Our project</strong>
			</div>
			<div class="mititle">고객사와 이루어낸 프로젝트</div>
			<div class="portbox">
				<div class="portinbox">
					<c:forEach var="item" items="${portfolioMainList}">
						<div class="portlist">
							<div class="div-block-62">
								<img src="../webflow/images/5f0e70333c341246f912a3a0_SBG365_Logo_s-p-130x130q80.png" alt="" class="portlmage">
							</div>
						</div>
						<div class="porttitlebox">
							<div class="porttitle">${item.title}</div>
							<div class="porttitle2">${item.stext}</div>
						</div>
					</c:forEach>
				</div>
				<div class="btn">
					<a href="/cong/user/portfolio.do" class="btnlink w-inline-block">
						<div class="more">MORE</div>
					</a>
				</div>
			</div>
		</div>
		<div class="footfall">
			<div class="footfallmtitle">OUR COMPANY INFORMATION</div>
			<div class="footfallbody">
				<div class="footfallinbox">
					<div class="footfallnum">
						<span class="text-span-26">11</span>
					</div>
					<div class="footfalltext">설립연차</div>
				</div>
				<div class="footfallinbox">
					<div class="footfallnum">
						<span class="text-span-26">34</span>
					</div>
					<div class="footfalltext">진행한 프로젝트</div>
				</div>
				<div class="footfallinbox">
					<div class="footfallnum">
						<span class="text-span-26">8</span>
					</div>
					<div class="footfalltext">유지관리</div>
				</div>
			</div>
			<div class="btnpop">
				<a href="/cong/user/contact.do" class="btnpoplink2 w-inline-block"><img src="/cong/webflow/images/pngwing.com---2020-11-10T115527.576.png" loading="lazy" sizes="(max-width: 767px) 6vw, 38.99305725097656px" srcset="/cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-500.png 500w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-800.png 800w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576.png 1012w" alt="" class="btnpoplmage"></a>
				<div class="btnpoptext">제작문의</div>
				<a href="/cong/user/faq.do" class="btnpoplink2 w-inline-block"><img
					src="/cong/webflow/images/pngwing.com---2020-11-10T115545.272.png"
					loading="lazy" alt="" class="btnpoplmage"></a>
				<div class="btnpoptext">FAQ</div>
			</div>
		</div>
		</div>
		<jsp:include page="../userframe/contactBox.jsp"></jsp:include>
	<jsp:include page="../userframe/buttom.jsp"></jsp:include>
	<jsp:include page="../userframe/footer.jsp"></jsp:include>
</body>
</html>