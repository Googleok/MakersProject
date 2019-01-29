package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.QnaReplyVO;

public interface QnaReplyService {
	public void addReply(QnaReplyVO vo)throws Exception;
	public List<QnaReplyVO> listReply(Integer bno) throws Exception;
	public void modifyReply(QnaReplyVO vo)throws Exception;
	public void removeReply(Integer rno)throws Exception;
	
	public List<QnaReplyVO> listReplyPage(Integer bno, Criteria cri)throws Exception;
	public int count(Integer bno)throws Exception;
}
