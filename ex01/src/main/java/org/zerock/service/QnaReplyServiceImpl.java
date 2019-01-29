package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.QnaReplyVO;
import org.zerock.persistence.QnaBoardDAO;
import org.zerock.persistence.QnaReplyDAO;
@Service
public class QnaReplyServiceImpl implements QnaReplyService{

	@Autowired
	private QnaReplyDAO replyDAO;
	
	@Autowired
	private QnaBoardDAO boardDAO;
	
	@Transactional
	@Override
	public void addReply(QnaReplyVO vo) throws Exception {
		replyDAO.create(vo);
		boardDAO.updateReplyCnt(vo.getBno(), 1);
	}

	@Override
	public List<QnaReplyVO> listReply(Integer bno) throws Exception {
		return replyDAO.list(bno);
	}

	@Override
	public void modifyReply(QnaReplyVO vo) throws Exception {
		replyDAO.update(vo);
	}

	@Transactional
	@Override
	public void removeReply(Integer rno) throws Exception {
		int bno = replyDAO.getBno(rno);
		replyDAO.delete(rno);
		boardDAO.updateReplyCnt(bno, -1);
	}

	@Override
	public List<QnaReplyVO> listReplyPage(Integer bno, Criteria cri) throws Exception {
		return replyDAO.listPage(bno, cri);
	}

	@Override
	public int count(Integer bno) throws Exception {
		return replyDAO.count(bno);
	}

}
