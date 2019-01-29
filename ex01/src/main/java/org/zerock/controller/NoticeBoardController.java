package org.zerock.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.NoticeBoardVO;
import org.zerock.domain.PageMaker;
import org.zerock.domain.SearchCriteria;
import org.zerock.service.NoticeBoardService;

@Controller
@RequestMapping("/snboard/*")
public class NoticeBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeBoardController.class);
	
	@Autowired
	private NoticeBoardService service;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void registGET(NoticeBoardVO board, Model model) throws Exception{
		
		logger.info("register get.............");
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registPOST(NoticeBoardVO board, RedirectAttributes rttr) throws Exception{
		logger.info("register post..........");
		logger.info(board.toString());

		service.regist(board);
		
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/snboard/listPage";
	}
	
	@RequestMapping(value="/listPage", method= RequestMethod.GET )
	public void list(@ModelAttribute("cri")SearchCriteria cri, Model model) throws Exception{
		logger.info(cri.toString());
		System.out.println(cri.toString());
		model.addAttribute("list", service.listSearchCriteria(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value="/readPage", method= RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, 
					@ModelAttribute("cri")SearchCriteria cri, Model model) throws Exception{
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value="/removePage", method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, SearchCriteria cri, RedirectAttributes rttr) throws Exception{
	
		service.remove(bno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/snboard/listPage";
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("bno") int bno,@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.POST)
	public String modifyPagingPost(NoticeBoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception{
		logger.info("mod post.........");
		
		service.modify(board);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		logger.info(rttr.toString());
		
		return "redirect:/snboard/listPage";
	}
	
	@RequestMapping("/getAttach/{bno}")
		@ResponseBody
		public List<String> getAttach(@PathVariable("bno") Integer bno)throws Exception{
		System.out.println("°Ù¾îÅ¸Ä¡");
		return service.getAttach(bno);
	}
}
