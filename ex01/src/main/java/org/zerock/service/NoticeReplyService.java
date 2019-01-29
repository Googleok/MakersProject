package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.NoticeReplyVO;

public interface NoticeReplyService {
	public void addReply(NoticeReplyVO vo)throws Exception;
	public List<NoticeReplyVO> listReply(Integer bno) throws Exception;
	public void modifyReply(NoticeReplyVO vo)throws Exception;
	public void removeReply(Integer rno)throws Exception;
	
	public List<NoticeReplyVO> listReplyPage(Integer bno, Criteria cri)throws Exception;
	public int count(Integer bno)throws Exception;
}
