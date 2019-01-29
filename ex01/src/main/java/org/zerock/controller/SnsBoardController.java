package org.zerock.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.SynthesizedAnnotation;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.SnsBoardVO;
import org.zerock.domain.SnsSearchCriteria;
import org.zerock.domain.liketoVO;
import org.zerock.service.SnsBoardService;

@Controller
@RequestMapping("/snsboard/*")
public class SnsBoardController {
	private static final Logger logger = LoggerFactory.getLogger(SnsBoardController.class);
	
	@Autowired
	private SnsBoardService service;

	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void registGET(SnsBoardVO board, Model model) throws Exception{
		
		logger.info("register get.............");
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registPOST(SnsBoardVO board, RedirectAttributes rttr) throws Exception{
		logger.info("register post..........");
		logger.info(board.toString());

		service.regist(board);
		
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/snsboard/listPage";
	}
	
	@RequestMapping(value="/listPage", method= RequestMethod.GET )
	public void list(@ModelAttribute("cri")SnsSearchCriteria cri, Model model) throws Exception{		
		logger.info(cri.toString());
		System.out.println(cri.toString());
		model.addAttribute("list", service.listSearchCriteria(cri));		
		model.addAttribute("listCount", service.listSearchCount(cri));
		System.out.println("게시물 총갯수는?"+service.listSearchCount(cri));
	}
	
	@RequestMapping(value="/listAdd", method= RequestMethod.GET )
	@ResponseBody
	public List<SnsBoardVO> listAdd(@ModelAttribute("cri")SnsSearchCriteria cri, Model model, @ModelAttribute("uid")String uid) throws Exception{		
		logger.info(cri.toString());
		System.out.println(cri.toString());
		String profileId = uid;
		System.out.println(profileId);
		model.addAttribute("listAdd", service.myListSearchCriteria(cri, profileId));
		System.out.println(service.myListSearchCriteria(cri, profileId));
		return service.myListSearchCriteria(cri, profileId);
		
	}
	

	@RequestMapping(value="/readPage", method= RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, 
					@ModelAttribute("cri")SnsSearchCriteria cri, Model model) throws Exception{
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value="/removePage", method=RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, SnsSearchCriteria cri, RedirectAttributes rttr) throws Exception{
	
		service.remove(bno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/snsboard/listPage";
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("bno") int bno,@ModelAttribute("cri") SnsSearchCriteria cri, Model model) throws Exception{
		model.addAttribute(service.read(bno));
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.POST)
	public String modifyPagingPost(SnsBoardVO board, SnsSearchCriteria cri, RedirectAttributes rttr) throws Exception{
		logger.info("mod post.........");
		
		service.modify(board);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		logger.info(rttr.toString());
		
		return "redirect:/snsboard/listPage";
	}
	
	@RequestMapping("/getAttach/{bno}")
		@ResponseBody
		public List<String> getAttach(@PathVariable("bno") Integer bno)throws Exception{
		System.out.println(bno);
		return service.getAttach(bno);
	}
	
	@RequestMapping(value="/likeTo", method= {RequestMethod.GET, RequestMethod.POST}, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public ResponseEntity<String> like(liketoVO liketoVO , Model model, HttpSession session)throws Exception{
		System.out.println("라이크");
		System.out.println(liketoVO.getBno());
		System.out.println(liketoVO.getUid());
		ResponseEntity<String> entity = null;
		int like_check = 0;
		int isEmptyLike = service.isEmptyLike(liketoVO.getBno(), liketoVO.getUid());
		System.out.println("isEmptyLike: "+isEmptyLike);
		like_check = service.getLikeCheck(liketoVO.getBno(), liketoVO.getUid());
		System.out.println("like_check: "+like_check);
		if(like_check == 0 && isEmptyLike == 0 || Integer.toString(like_check).equals("") && isEmptyLike == 0 ) {
			entity = new ResponseEntity<String>("FIRST", HttpStatus.OK);
			service.likeTo(liketoVO.getBno(), liketoVO.getUid());
			service.upLikeCnt(liketoVO.getBno()); // 좋아요수 업
		}else if(like_check == 0 && isEmptyLike == 1) {
			entity = new ResponseEntity<String>("SECOND", HttpStatus.OK);
			service.updateLike(liketoVO.getBno(), liketoVO.getUid());
			service.upLikeCnt(liketoVO.getBno());
		}else {
			entity = new ResponseEntity<String>("THIRD", HttpStatus.OK);
			service.likeCancel(liketoVO.getBno(), liketoVO.getUid());
			service.downLikeCnt(liketoVO.getBno()); //좋아요수 다운
		}
		
		return entity;
	}
	
	@RequestMapping(value="/heartGet", method= {RequestMethod.GET, RequestMethod.POST} )
	@ResponseBody
	public List<liketoVO> getHeart(liketoVO liketoVO, Model model) throws Exception{		
		logger.info(liketoVO.getUid());
		System.out.println("+========================================================");
		System.out.println(liketoVO.getUid());
		model.addAttribute("listAdd", service.getHeart(liketoVO.getUid()));
		System.out.println( service.getHeart(liketoVO.getUid()));
		return  service.getHeart(liketoVO.getUid());
	}
	
	@RequestMapping(value="/heartGetOne", method= {RequestMethod.GET, RequestMethod.POST} )
	@ResponseBody
	public int getHeartOne(liketoVO liketoVO, Model model) throws Exception{		
		System.out.println("+========================================================");
		System.out.println(liketoVO.getUid());
		System.out.println(liketoVO.getBno());
		model.addAttribute("listAdd", service.getHeartOne(liketoVO.getBno(), liketoVO.getUid()));
		System.out.println("카운트개수는="+service.getHeartOne(liketoVO.getBno(), liketoVO.getUid()));
		return   service.getHeartOne(liketoVO.getBno(), liketoVO.getUid());
	}
	
	@RequestMapping(value="/profile", method= {RequestMethod.GET, RequestMethod.POST} )
	public void profile(@ModelAttribute("cri")SnsSearchCriteria cri, Model model, HttpSession session) throws Exception{		
		logger.info(cri.toString());
		cri.setPage(0);
		cri.setPerPageNum(12);
		System.out.println(cri.toString());
		String uid = (String) session.getAttribute("myPageId");
		System.out.println(uid);
		model.addAttribute("list", service.myListSearchCriteria(cri, uid));		
		model.addAttribute("listCount", service.myListSearchCount(cri, uid));
		System.out.println("마이리스트:" +service.myListSearchCriteria(cri, uid));
		System.out.println("게시물 총갯수는?"+service.myListSearchCount(cri, uid));
	}
	
	@RequestMapping(value="/whoProfile", method= {RequestMethod.GET, RequestMethod.POST} )
	public void yourProfile(@ModelAttribute("cri")SnsSearchCriteria cri, Model model, HttpSession session, @ModelAttribute("uid")String uid) throws Exception{		
		logger.info(cri.toString());
		cri.setPage(0);
		cri.setPerPageNum(12);
		System.out.println(cri.toString());
		String profileId = uid;
		System.out.println(uid);
		session.setAttribute("whoProfileId", uid);
		model.addAttribute("list", service.myListSearchCriteria(cri, profileId));		
		model.addAttribute("listCount", service.myListSearchCount(cri, profileId));
		System.out.println("마이리스트:" +service.myListSearchCriteria(cri, profileId));
		System.out.println("게시물 총갯수는?"+service.myListSearchCount(cri, profileId));
	}
	
	
	
}
