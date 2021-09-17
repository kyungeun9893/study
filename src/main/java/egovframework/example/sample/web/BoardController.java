package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
@RequestMapping("/user")

public class BoardController {
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;

	@RequestMapping("/main.do")
	public String main(Model model){
		List<EgovMap>portfolioList = (List<EgovMap>)sampleDAO.list("selectPortfolioMain");
		model.addAttribute("portfolioMainList",portfolioList);
		return"user/main";
	}
	@RequestMapping("/faq.do")
	public String faq(HttpServletRequest request , Model model){
		String pageIndex = request.getParameter("pageIndex");
		PaginationInfo pi = new PaginationInfo();
		if(pageIndex == null || pageIndex.equals("")){
			pi.setCurrentPageNo(1);
		}else{
			pi.setCurrentPageNo(Integer.parseInt(pageIndex));
		}
		pi.setRecordCountPerPage(2);
		pi.setPageSize(3);
		EgovMap in = new EgovMap();
		in.put("first", pi.getFirstRecordIndex());
		in.put("record", pi.getRecordCountPerPage());
		List<EgovMap>faqList = (List<EgovMap>)sampleDAO.list("selectFaqUserList" , in);
		pi.setTotalRecordCount((int)sampleDAO.select("selectFaqUserListCnt",in));
		model.addAttribute("pi", pi);
		model.addAttribute("faqList",faqList);
		return"user/faq";
	}
	@RequestMapping("/about.do")
	public String about(){
		return"user/about";
	}
	@RequestMapping("/process.do")
	public String process(){
		return"user/process";
	}
	@RequestMapping("/contact.do")
	public String contatct(){
		return"user/contact";
	}
	@RequestMapping("/portfolio.do")
	public String portfolio(HttpServletRequest request , Model model){
		String pageIndex = request.getParameter("pageIndex");
		PaginationInfo pi = new PaginationInfo();
		if(pageIndex == null || pageIndex.equals("")){
			pi.setCurrentPageNo(1);
		}else{
			pi.setCurrentPageNo(Integer.parseInt(pageIndex));
		}
		pi.setRecordCountPerPage(9);
		pi.setPageSize(3);
		EgovMap in = new EgovMap();
		in.put("first", pi.getFirstRecordIndex());
		in.put("record", pi.getRecordCountPerPage());
		List<EgovMap>postList = (List<EgovMap>)sampleDAO.list("selectPortfolioList",in);
		pi.setTotalRecordCount((int)sampleDAO.select("selectPortfolioListCnt",in));
		model.addAttribute("portfolioList",postList);
		model.addAttribute("pi", pi);
		return"user/portfolio";
	}
	@RequestMapping("/contactProcess.do")
	public String contactProcess(HttpServletRequest request){
		String ctitleCon = request.getParameter("ctitleJsp");
		String nameCon = request.getParameter("nameJsp");
		String cphoneCon1= request.getParameter("cphoneJsp1");
		String cphoneCon2= request.getParameter("cphoneJsp2");
		String cphoneCon3= request.getParameter("cphoneJsp3");
		String phoneCon = request.getParameter("phoneJsp");
		String emailCon1 = request.getParameter("emailJsp1");
		String emailCon2 = request.getParameter("emailJsp2");
		String homepageCon = request.getParameter("homepageJsp");
		String textCon = request.getParameter("textJsp");
		String link1Con = request.getParameter("link1Jsp");
		String link2Con = request.getParameter("link2Jsp");
		String budgetCon1 = request.getParameter("budgetJsp1");
		String budgetCon2 = request.getParameter("budgetJsp2");
		
		EgovMap in = new EgovMap();
		in.put("ctitleQuery", ctitleCon);
		in.put("nameQuery", nameCon);
		in.put("cphoneQuery", cphoneCon1+"-"+cphoneCon2+"-"+cphoneCon3);
		in.put("phoneQuery", phoneCon);
		in.put("emailQuery", emailCon1+"@"+emailCon2);
		in.put("homepageQuery", homepageCon);
		in.put("textQuery", textCon);
		in.put("link1Query", link1Con);
		in.put("link2Query", link2Con); 
		in.put("budgetQuery", budgetCon1+"~"+budgetCon2);  
		sampleDAO.insert("insertContactUser",in);
		return"redirect:main.do";
	}
}
