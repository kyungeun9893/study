package egovframework.example.sample.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.service.impl.SampleDAO;

@Controller

public class BoardController {
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;

	@RequestMapping("/main.do")
	public String main(){
		return"user/main";
	}
	@RequestMapping("/faq.do")
	public String faq(){
		return"user/faq";
	}
}
