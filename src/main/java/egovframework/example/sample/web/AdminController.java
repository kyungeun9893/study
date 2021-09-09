package egovframework.example.sample.web;

import java.io.File;
import java.util.List;
import java.util.Properties;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
@RequestMapping("/admin")	
public class AdminController {
	@Resource(name="fileProperties") // 컨트롤러에 셋팅 
	private Properties fileProperties;
	
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	

	
	@RequestMapping("/main.do")
	public String main(){
		return"admin/main";
	}
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request , Model model){
		model.addAttribute("error" , request.getParameter("error"));
		return"admin/login";
	}
	@RequestMapping("/loginProcess.do")
	public String loginProcess(HttpServletRequest request){
		String idCon = request.getParameter("idJsp");
		String pwCon = request.getParameter("pwJsp");
		EgovMap in = new EgovMap();
		in.put("idQuery", idCon);
		in.put("pwQuery", pwCon);
		EgovMap info = (EgovMap)sampleDAO.select("checkAdminLogin",in);
		if(info == null){
			return"redirect:Login.do?error=1";
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("AdminLoginIdx", info.get("idx"));
			session.setAttribute("AdminLoginId", info.get("id"));
		return"redirect:main.do";
		}
	}
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.setAttribute("AdminLoginIdx", null);
		session.setAttribute("AdminLoginId", null);
		return"redirect:main.do";
		
	}
	@RequestMapping("/faq.do")
	public String faq(){
		return"admin/faq";
	}
	@RequestMapping("/faqView.do")
	public String faqView(HttpServletRequest request , Model model){
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
		List<EgovMap> faqList = (List<EgovMap>)sampleDAO.list("selectFaqList" , in);
		pi.setTotalRecordCount((int)sampleDAO.select("selectFaqListCnt",in));
		model.addAttribute("faqList",faqList);
		model.addAttribute("pi",pi);
		return"admin/faqView";
	}
	@RequestMapping("/faqDetail.do")
	public String faqDetail(HttpServletRequest request , Model model){
		String idx = request.getParameter("idx");
		model.addAttribute("faqDetail",sampleDAO.select("selectFaqDetail",idx));
		return"admin/faqDetail";
	}
	@RequestMapping("/faqUpdate.do")
	public String faqUpdate(HttpServletRequest request , Model model){
		String idx = request.getParameter("idx");
		model.addAttribute("faqDetail" , sampleDAO.select("selectFaqDetail",idx));
		return"admin/faqUpdate";
	}
	@RequestMapping("/faqUpdateProcess.do")
	public String faqUpdateProcess(HttpServletRequest request){
		String idxCon = request.getParameter("idxJsp");
		String titleCon = request.getParameter("titleJsp");
		String textCon = request.getParameter("textJsp");
		EgovMap in = new EgovMap();
		in.put("idxQuery", idxCon);
		in.put("titleQuery", titleCon);
		in.put("textQuery", textCon);
		sampleDAO.update("updateFaq",in);
		return"redirect:faqDetail.do?idx="+idxCon;
	}
	@RequestMapping("/faqDelete.do")
	public String faqDeleteProcess(HttpServletRequest request){
		String idxCon=request.getParameter("idxJsp");
		sampleDAO.delete("deleteFaq",idxCon);
		return"redirect:faqView.do";
	}
	@RequestMapping("/faqProcess.do")
	public String faqProcess(HttpServletRequest request){
		String titleCon = request.getParameter("titleJsp");
		String textCon = request.getParameter("textJsp");
		EgovMap in = new EgovMap();
		in.put("titleQuery", titleCon);
		in.put("textQuery", textCon);
		sampleDAO.insert("insertFaq",in);
		return"redirect:faqView.do";
	}
	@RequestMapping("/portfolio.do")
	public String portfolio(HttpServletRequest request){
		String sdate = request.getParameter("sdate");
		String edate = request.getParameter("edate");
		EgovMap in = new EgovMap();
		in.put("sdate", sdate);
		in.put("edate", edate);
		return"admin/portfolio";
	}
	@RequestMapping("/portfolioProcess.do")
	public String portfolioProcess(MultipartHttpServletRequest request , Model model){
		String title = request.getParameter("title");
		String stext = request.getParameter("stext");
		String dtext = request.getParameter("dtext");
		EgovMap in = new EgovMap();
		in.put("title", title);
		in.put("dtext", dtext);
		in.put("stext", stext);
		int midx = (int)sampleDAO.insert("insertPortfolio",in);
		List<MultipartFile> files = request.getFiles("portfolio");
		if(files.size()>0){
			in.put("midx", midx);
			String path = fileProperties.getProperty("file.photo.upload");
			File file = new File(path);
			if(!file.exists()){ 
				file.mkdirs(); 
			}
			for(int i=0; i<files.size(); i++){
				if(!files.get(i).isEmpty()){
					String originNm = files.get(i).getOriginalFilename();
					String saveNm = UUID.randomUUID().toString().replaceAll("-", "") + originNm.substring(originNm.lastIndexOf(".")); // 저장이름 = 고유한이름
					try {
						files.get(i).transferTo(new File(path+saveNm));
						in.put("originNm", originNm);
						in.put("saveNm", saveNm);
						sampleDAO.insert("insertPortfolioFiles",in);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		return"redirect:portfolio.do";
	}
	@RequestMapping("/contact.do")
	public String contact(HttpServletRequest request , Model model){
		String pageIndex = request.getParameter("pageIndex");
		PaginationInfo pi = new PaginationInfo();
		if(pageIndex == null || pageIndex.equals("")){
			pi.setCurrentPageNo(1);
		}else{
			pi.setCurrentPageNo(Integer.parseInt(pageIndex));
		}
			pi.setRecordCountPerPage(1);
			pi.setPageSize(3);
			
		EgovMap in = new EgovMap();
		in.put("first", pi.getFirstRecordIndex());
		in.put("record", pi.getRecordCountPerPage());
		List<EgovMap> contactList = (List<EgovMap>)sampleDAO.list("selectContactList" , in);
		pi.setTotalRecordCount((int)sampleDAO.select("selectContactListCnt",in));
		model.addAttribute("contactList",contactList);
		model.addAttribute("pi",pi);
		return"/admin/contact";
	}
	@RequestMapping("/contactDelete.do")
	public String contactDelete(HttpServletRequest request){
		String idxCon=request.getParameter("idxJsp");
		sampleDAO.delete("deletecontact",idxCon);
		return"redirect:contact.do";
	}
	@RequestMapping("/contactDetail.do")
	public String contactDetail(HttpServletRequest request , Model model){
		String idx = request.getParameter("idx");
		model.addAttribute("contactDetail",sampleDAO.select("selectContactDetail",idx));
		return"admin/contactDetail";
	}
	@RequestMapping("/portfolioView.do")
	public String portfolioView(HttpServletRequest request,Model model){
		String pageIndex = request.getParameter("pageIndex");
		PaginationInfo pi = new PaginationInfo();
		if(pageIndex == null || pageIndex.equals("")){
			pi.setCurrentPageNo(1);
		}else{
			pi.setCurrentPageNo(Integer.parseInt(pageIndex));
		}
		pi.setRecordCountPerPage(8);
		pi.setPageSize(3);
		EgovMap in = new EgovMap();
		in.put("first", pi.getFirstRecordIndex());
		in.put("record", pi.getRecordCountPerPage());
		List<EgovMap> viewList = (List<EgovMap>)sampleDAO.list("selectPortfolioView" , in);
		pi.setTotalRecordCount((int)sampleDAO.select("selectPortfolioCnt",in));
		model.addAttribute("portfolioViewList",viewList);
		model.addAttribute("pi",pi);
		return"admin/portfolioView";
	}
	@RequestMapping("/portfolioDetail.do")
	public String portfolioDetail(HttpServletRequest request , Model model){
		String idx = request.getParameter("idx");
		model.addAttribute("portfolioDetail",sampleDAO.select("selectportfolioDetail",idx));
		return"admin/portfolioDetail";
	}
	@RequestMapping("/portfolioDelete.do")
	public String portfolioDelete(HttpServletRequest request){
		String idxCon=request.getParameter("idxJsp");
		sampleDAO.delete("deletePortfolio",idxCon);
		return"redirect:portfolioView.do";
	}
	@RequestMapping("/portfolioUpdate.do")
	public String portfolioUpdate(HttpServletRequest request){
		String sdate = request.getParameter("sdate");
		String edate = request.getParameter("edate");
		EgovMap in = new EgovMap();
		in.put("sdate", sdate);
		in.put("edate", edate);
		return"admin/portfolioUpdate";
	}
	@RequestMapping("/portfolioUpdateProcess.do")
	public String portfolioUpdateProcess(MultipartHttpServletRequest request , Model model){
		String title = request.getParameter("title");
		String idx = request.getParameter("idx");
		String stext = request.getParameter("stext");
		String dtext = request.getParameter("dtext");
		EgovMap in = new EgovMap();
		in.put("title", title);
		in.put("idx", idx);
		in.put("dtext", dtext);
		in.put("stext", stext);
		int midx = (int)sampleDAO.update("updatePortfolio",in);
		List<MultipartFile> files = request.getFiles("portfolio");
		if(files.size()>0){
			in.put("midx", midx);
			String path = fileProperties.getProperty("file.photo.upload");
			File file = new File(path);
			if(!file.exists()){ 
				file.mkdirs(); 
			}
			for(int i=0; i<files.size(); i++){
				if(!files.get(i).isEmpty()){
					String originNm = files.get(i).getOriginalFilename();
					String saveNm = UUID.randomUUID().toString().replaceAll("-", "") + originNm.substring(originNm.lastIndexOf(".")); // 저장이름 = 고유한이름
					try {
						files.get(i).transferTo(new File(path+saveNm));
						in.put("originNm", originNm);
						in.put("saveNm", saveNm);
						sampleDAO.update("updatePortfolioFiles",in);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		return"redirect:portfolio.do";
	}
	
}