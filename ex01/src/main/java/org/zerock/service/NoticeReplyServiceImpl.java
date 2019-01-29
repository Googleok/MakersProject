package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.NoticeReplyVO;
import org.zerock.persistence.NoticeBoardDAO;
import org.zerock.persistence.NoticeReplyDAO;
@Service
public class NoticeReplyServiceImpl implements NoticeReplyService{

	@Autowired
	private NoticeReplyDAO replyDAO;
	
	@Autowired
	private NoticeBoardDAO boardDAO;
	
	@Transactional
	@Override
	public void addReply(NoticeReplyVO vo) throws Exception {
		replyDAO.create(vo);
		boardDAO.updateReplyCnt(vo.getBno(), 1);
	}

	@Override
	public List<NoticeReplyVO> listReply(Integer bno) throws Exception {
		return replyDAO.list(bno);
	}

	@Override
	public void modifyReply(NoticeReplyVO vo) throws Exception {
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
	public List<NoticeReplyVO> listReplyPage(Integer bno, Criteria cri) throws Exception {
		return replyDAO.listPage(bno, cri);
	}

	@Override
	public int count(Integer bno) throws Exception {
		return replyDAO.count(bno);
	}

}
