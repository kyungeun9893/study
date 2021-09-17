<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../userframe/header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../userframe/top.jsp"></jsp:include>
  <div class="body">
    <div class="porttop">
      <div class="title-copy"><strong class="bold-text-4">Project Request</strong></div>
      <div class="portcate">귀하의 프로젝트에 대해 아래 양식을 작성해주시면 빠르게 연락드리겠습니다.</div>
    </div>
    <div class="requestbox">
    <form action="/cong/user/contactProcess.do" id="insertForm" method="post">
      <div class="requestinbox">
        <div class="reinbox">
          <div class="requestitle"><span class="text-span">*</span> 회사명 </div><input type="text" class="text-field-2 w-input" maxlength="256" name="ctitleJsp" required="">
        </div>
        <div class="reinbox">
          <div class="requestitle"><span class="text-span">*</span> 고객명</div><input type="text" class="text-field-2 w-input" maxlength="256" name="nameJsp"  required="">
        </div>
      </div>
      <div class="requestinbox">
        <div class="reinbox">
          <div class="requestitle"><span class="text-span">*</span> 핸드폰 번호</div>
          <div class="numbox"><input type="text" class="num w-input" maxlength="256" name="cphoneJsp1" required=""><input type="text" class="num w-input" maxlength="256" name="cphoneJsp2" required=""><input type="text" class="num w-input" maxlength="256" name="cphoneJsp3" required=""></div>
        </div>
        <div class="reinbox">
          <div class="requestitle">전화번호</div><input type="text" class="text-field-2 w-input" maxlength="256" name="phoneJsp" id="phoneJsp" required="">
        </div>
      </div>
      <div class="requestinbox">
        <div class="reinbox">
          <div class="requestitle">이메일 </div>
          <div class="numbox"><input type="text" class="emailbox w-input" maxlength="256" name="emailJsp1" required="">
            <div class="emailtext">@</div><input type="text" class="emailbox w-input" maxlength="256" name="emailJsp2" required="">
          </div>
        </div>
        <div class="reinbox">
          <div class="requestitle">홈페이지</div><input type="text" class="text-field-2 w-input" maxlength="256" name="homepageJsp" placeholder="http://" required="">
        </div>
      </div>
      <div class="requestinbox">
        <div class="reinbox">
          <div class="requestitle">참고 사이트 </div><input type="text" class="text-field-2 w-input" maxlength="256" name="link1Jsp" required="">
        </div>
        <div class="reinbox">
          <div class="requestitle">참고 사이트 2</div><input type="text" class="text-field-2 w-input" maxlength="256" name="link2Jsp" required="">
        </div>
      </div>
      <div class="requestinbox">
        </div>
        <div class="reinbox">
          <div class="requestitle">예상 작업예산</div>
          <div class="numbox">
            <div class="div-block-70"><input type="text" class="num-copy w-input" maxlength="256" name="budgetJsp1" required="">
              <div class="text-block-52">만원</div>
            </div>
            <div class="text-block-53">~</div>
            <div class="div-block-70"><input type="text" class="num-copy w-input" maxlength="256" name="budgetJsp2" required="">
              <div class="text-block-52">만원</div>
          </div>
            </div>
        </div>
      <div class="requestinbox">
        <div class="reinbox-copy">
          <div class="requestitle">문의내용</div><textarea name="textJsp" maxlength="5000" class="textarea-2 w-input"></textarea>
        </div>
       </div>
      </form>
      <div class="btn-copy">
        <a href="javascript:insert()" class="btnlink w-inline-block">
          <div class="more-copy">등록</div>
        </a>
      </div>
   </div>
    <div class="btnpop">
      <a href="/cong/user/contact.do" class="btnpoplink2 w-inline-block"><img src="/cong/webflow/images/pngwing.com---2020-11-10T115527.576.png" loading="lazy" sizes="(max-width: 767px) 6vw, 38.99305725097656px" srcset="/cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-500.png 500w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-800.png 800w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576.png 1012w" alt="" class="btnpoplmage"></a>
      <div class="btnpoptext">제작문의</div>
      <a href="/cong/user/faq.do" class="btnpoplink2 w-inline-block"><img src="/cong/webflow/images/pngwing.com---2020-11-10T115545.272.png" loading="lazy" alt="" class="btnpoplmage"></a>
      <div class="btnpoptext">FAQ</div>
   </div>
 </div>
  	<jsp:include page="../userframe/buttom.jsp"></jsp:include>
	<jsp:include page="../userframe/footer.jsp"></jsp:include>
	<script>
		function insert(){
			$("#insertForm").submit();
		}
	</script>
</body>
</html>