package org.zerock.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;
import org.zerock.domain.UserVO;
import org.zerock.dto.JoinDTO;
import org.zerock.dto.LoginDTO;
import org.zerock.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	private final static Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	/* *
	 * 로그인이 존나 안되서 리턴형을 String으로 바꾸고
	 * session.setAttribute("dest", "/sboard/listPage"); 
	 * 이렇게 바꾸니깐 된다..시발
	 * 왜 되는지 모르겠네 하
	 */
	@RequestMapping(value = "/loginPost", method=RequestMethod.POST)
	public String loginPOST(LoginDTO dto, HttpSession session, Model model, HttpServletResponse response)throws Exception{
		
		UserVO vo = service.login(dto);
		
		if(vo == null) { return "redirect:/user/login"; }
		
		session.setAttribute("myPageId", vo.getUid());
		
		model.addAttribute("userVO", vo);

		if(dto.isUseCookie()) {
			
			int amount = 60 * 60 * 24 * 7;
			
			Date sessionLimit = new Date(System.currentTimeMillis()+(1000*amount));
			
			service.keepLogin(vo.getUid(), session.getId(), sessionLimit);
		}
		System.out.println("로그인 포스트");
		session.setAttribute("dest", "/sboard/listPage");
		return "/sboard/listPage";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public void logout(HttpServletRequest request,
			HttpServletResponse response, HttpSession session)throws Exception{
		
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			UserVO vo = (UserVO) obj;
			
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUid(), session.getId(), new Date());
			}
		}
		response.sendRedirect("/user/login");
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void joinGET(@ModelAttribute("dto") JoinDTO dto) {
	}
	
	@RequestMapping(value="/joinPost", method=RequestMethod.POST)
	public void joinPOST(JoinDTO dto, HttpSession session, Model model, HttpServletResponse response)throws Exception{
		service.join(dto);
		response.sendRedirect("user/login");
	}
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public void mainGET(@ModelAttribute("dto") JoinDTO dto) {
	}

	@RequestMapping(value = "checkId", method = { RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody int idCheck(UserVO vo, Model model) throws Exception{
        return service.checkId(vo);
    }
	
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public void emailConfirm(String userEmail, Model model) throws Exception { // 이메일인증
		service.userAuth(userEmail);
		model.addAttribute("userEmail", userEmail);
	}
	
	@RequestMapping(value = "/findForm", method = RequestMethod.GET)
	public void findForm(String userEmail, Model model) throws Exception {
	}


	@RequestMapping(value = "/findId" , method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public @ResponseBody String findingId(String uemail1, String uemail2, Model model , HttpServletResponse response)throws Exception {
		String findId =service.findId(uemail1, uemail2);
		System.out.println(findId);
		model.addAttribute("findId", findId);
		String findEmail = "{\"user_id\":\""+findId+"\"}";
		System.out.println(findEmail);
		return findEmail;
	}
	
	@RequestMapping(value="/findPwd", method=RequestMethod.POST)
	public @ResponseBody String findingPwd(String uid, HttpSession session, Model model)throws Exception{
		boolean result = service.findPwd(uid);
		String findPwdOk=null;
		if(result) {
			findPwdOk = "{\"findPwd\":\""+"OK"+"\"}";
		}else {
			findPwdOk = "{\"findPwd\":\""+"NO"+"\"}";
		}
		
		return findPwdOk;
	}
	
	@RequestMapping(value = "/myRoom", method = RequestMethod.GET)
	public void myRoom(String userEmail, Model model) throws Exception {
	}
	@RequestMapping(value = "/NewFile", method = RequestMethod.GET)
	public void newfile(String userEmail, Model model) throws Exception {
	}
	
	@RequestMapping(value = "/beforeMyPage", method = RequestMethod.GET)
	public void beforeMypage(String upw, HttpSession session, Model model)throws Exception{
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.POST)
	public void myPagePOST(String upw, HttpSession session, Model model)throws Exception{
		System.out.println("마이페이지");
		JoinDTO result = service.beforeMyPage((String)session.getAttribute("myPageId"), upw);
		
		if(result == null) {
			System.out.println("아무것도 없다");
			return;
		}

		model.addAttribute("myPageList", result);
		
	}
	
	@RequestMapping(value = "/updateInfo", method = RequestMethod.POST)
	public void updateInfo(JoinDTO dto, HttpSession session, Model model, HttpServletResponse response)throws Exception{
		service.updateInfo(dto, (String)session.getAttribute("myPageId"));
		response.sendRedirect("/sboard/listPage");
	}
	
	@RequestMapping(value = "/ImageFrame", method = RequestMethod.GET)
	public void ImageFrame(String upw, HttpSession session, Model model)throws Exception{
	}
	
	@RequestMapping(value = "/ImageFrame2", method = RequestMethod.GET)
	public void ImageFrame2(String upw, HttpSession session, Model model)throws Exception{
	}
	
	
	@RequestMapping(value = "/ImageFrame3", method = RequestMethod.GET)
	public void ImageFrame3(String upw, HttpSession session, Model model)throws Exception{
	}
	
}
