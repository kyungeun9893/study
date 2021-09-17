<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../userframe/header.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../userframe/top.jsp"></jsp:include>
      <div class="body">
        <form name="listForm" action="/cong/user/faq.do">
        	<input type="hidden" name="pageIndex"/>
        </form>
        <div class="porttop">
          <div class="title-copy"><strong>FAQ</strong></div>
        </div>
        <div class="div-block-7">
          <div class="table-3">
            <c:forEach var="item" items="${faqList}">
            <div class="rwrap">
              <a href="/cong/user/faq.do" class="rowbtn w-inline-block">
                <div class="row-7">
                  <div class="q-2">Q${item.idx}</div>
                  <div class="ttitle4-2">${item.title}</div><img src="../webflow/images/펼치기_1펼치기.png" alt="" class="btnicon-2">
                </div>
              </a>
              <div class="qcontent-2" ><span class="text-span-22">${item.ftext}</span><br><span class="text-span-23"></span></div>
            </div>
             </c:forEach>
          </div>
          </div>
          <ui:pagination paginationInfo="${pi}" jsFunction="page" />
          <div class="btnpop">
	      <a href="/cong/user/contact.do" class="btnpoplink2 w-inline-block"><img src="../webflow/images/pngwing.com---2020-11-10T115527.576-p-500.png" loading="lazy" sizes="(max-width: 767px) 6vw, 38.99305725097656px" srcset="/cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-500.png 500w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-800.png 800w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576.png 1012w" alt="" class="btnpoplmage"></a>
	      <div class="btnpoptext">제작문의</div>
	      <a href="/cong/user/faq.do" class="btnpoplink2 w-inline-block"><img src="/cong/webflow/images/pngwing.com---2020-11-10T115545.272.png" loading="lazy" alt="" class="btnpoplmage"></a>
	      <div class="btnpoptext">FAQ</div>
	    </div>
	    <jsp:include page="../userframe/contactBox.jsp"></jsp:include>
     </div>
          	<jsp:include page="../userframe/buttom.jsp"></jsp:include>
	<jsp:include page="../userframe/footer.jsp"></jsp:include>
<script>
function page(num){
	document.listForm.pageIndex.value = num;
	document.listForm.submit();
}
</script>
</body>
</html>