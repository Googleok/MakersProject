package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.SnsReplyVO;

public interface SnsReplyService {
	public void addReply(SnsReplyVO vo)throws Exception;
	public List<SnsReplyVO> listReply(Integer bno) throws Exception;
	public void modifyReply(SnsReplyVO vo)throws Exception;
	public void removeReply(Integer rno)throws Exception;
	
	public List<SnsReplyVO> listReplyPage(Integer bno)throws Exception;
	public int count(Integer bno)throws Exception;
}
