package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.NoticeBoardVO;
import org.zerock.domain.SearchCriteria;
import org.zerock.persistence.NoticeBoardDAO;
import org.zerock.persistence.NoticeReplyDAO;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService{

	@Autowired
	NoticeBoardDAO boardDAO;
	
	@Autowired
	NoticeReplyDAO replyDAO;
	
	@Transactional
	@Override
	public void regist(NoticeBoardVO board) throws Exception {
		boardDAO.create(board);
		
		String[] files = board.getFiles();
		
		if(files == null) { return; }
		
		for(String fileName : files) {
			boardDAO.addAttach(fileName);
		}
	}

	@Transactional
	@Override
	public NoticeBoardVO read(Integer bno) throws Exception {
		boardDAO.updateViewCnt(bno);
		return boardDAO.read(bno);
	}

	@Transactional
	@Override
	public void modify(NoticeBoardVO board) throws Exception {
		boardDAO.update(board);
		
		Integer bno = board.getBno();
		
		boardDAO.deleteAttach(bno);
		
		String[] files = board.getFiles();
		
		if(files == null) { return; }
		
		for(String fileName : files) {
			boardDAO.replaceAttach(fileName, bno);
		}
	}

	@Transactional
	@Override
	public void remove(Integer bno) throws Exception {
		boardDAO.deleteAttach(bno);
		replyDAO.deleteAll(bno);
		boardDAO.delete(bno);
	}

	@Override
	public List<NoticeBoardVO> listAll() throws Exception {
		return boardDAO.listAll();
	}

	@Override
	public List<NoticeBoardVO> listCriteria(Criteria cri) throws Exception {
		return boardDAO.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return boardDAO.countPaging(cri);
	}

	@Override
	public List<NoticeBoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return boardDAO.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return boardDAO.listSearchCount(cri);
	}

	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		return boardDAO.getAttach(bno);
	}
	
	

}
