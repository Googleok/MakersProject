package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.SnsReplyVO;
import org.zerock.persistence.SnsBoardDAO;
import org.zerock.persistence.SnsReplyDAO;
@Service
public class SnsReplyServiceImpl implements SnsReplyService{

	@Autowired
	private SnsReplyDAO replyDAO;
	
	@Autowired
	private SnsBoardDAO boardDAO;
	
	@Transactional
	@Override
	public void addReply(SnsReplyVO vo) throws Exception {
		replyDAO.create(vo);
		boardDAO.updateReplyCnt(vo.getBno(), 1);
	}
	
	@Override
	public List<SnsReplyVO> listReply(Integer bno) throws Exception {
		return replyDAO.list(bno);
	}

	@Override
	public void modifyReply(SnsReplyVO vo) throws Exception {
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
	public List<SnsReplyVO> listReplyPage(Integer bno) throws Exception {
		return replyDAO.listPage(bno);
	}

	@Override
	public int count(Integer bno) throws Exception {
		return replyDAO.count(bno);
	}

}
