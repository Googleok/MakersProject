package org.zerock.service;

import java.util.Date;

import org.zerock.domain.UserVO;
import org.zerock.dto.JoinDTO;
import org.zerock.dto.LoginDTO;

public interface UserService {
	
	public UserVO login(LoginDTO dto)throws Exception;
	
	public void keepLogin(String uid, String sessionId, Date next)throws Exception;
	
	public UserVO checkLoginBefore(String value);
	
	public void join(JoinDTO dto)throws Exception;
	
	public int checkId(UserVO vo)throws Exception;
	
	public void userAuth(String userEmail) throws Exception;
	
	public String findId(String uemail1, String uemail2 )throws Exception;
	
	public boolean findPwd(String uid)throws Exception;
	
	public JoinDTO beforeMyPage(String uid, String upw)throws Exception;
	
	public void updateInfo(JoinDTO dto, String myId)throws Exception;
	
}
