package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.SnsBoardVO;
import org.zerock.domain.SnsCriteria;
import org.zerock.domain.SnsSearchCriteria;
import org.zerock.domain.liketoVO;
import org.zerock.persistence.SnsBoardDAO;
import org.zerock.persistence.SnsReplyDAO;

@Service
public class SnsBoardServiceImpl implements SnsBoardService{

	@Autowired
	SnsBoardDAO boardDAO;
	
	@Autowired
	SnsReplyDAO replyDAO;
	
	@Transactional
	@Override
	public void regist(SnsBoardVO board) throws Exception {
		boardDAO.create(board);
		
		String[] files = board.getFiles();
		
		if(files == null) { return; }
		int i=0;
		for(String fileName : files) {
			i++;
			boardDAO.addAttach(fileName, i);
		}
	}

	@Transactional
	@Override
	public SnsBoardVO read(Integer bno) throws Exception {
		boardDAO.updateViewCnt(bno);
		return boardDAO.read(bno);
	}

	@Transactional
	@Override
	public void modify(SnsBoardVO board) throws Exception {
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
	public List<SnsBoardVO> listAll() throws Exception {
		return boardDAO.listAll();
	}

	@Override
	public List<SnsBoardVO> listCriteria(SnsCriteria cri) throws Exception {
		return boardDAO.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(SnsCriteria cri) throws Exception {
		return boardDAO.countPaging(cri);
	}

	@Override
	public List<SnsBoardVO> listSearchCriteria(SnsSearchCriteria cri) throws Exception {
		return boardDAO.listSearch(cri);
	}

	@Override
	public int listSearchCount(SnsSearchCriteria cri) throws Exception {
		return boardDAO.listSearchCount(cri);
	}

	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		return boardDAO.getAttach(bno);
	}
	
	@Override
	public List<String> getPhotoNum(Integer bno) throws Exception {
		return boardDAO.getPhotoNum(bno);
	}

	@Override
	public void likeTo(Integer bno, String uid) throws Exception {
		boardDAO.likeTo(bno, uid);
	}

	@Override
	public int getLikeCnt(Integer bno) throws Exception {
		return boardDAO.getLikeCnt(bno);
	}

	@Override
	public void upLikeCnt(Integer bno) throws Exception {
		boardDAO.upLikeCnt(bno);
	}

	@Override
	public void downLikeCnt(Integer bno) throws Exception {
		boardDAO.downLikeCnt(bno);
	}

	@Override
	public int getLikeCheck(Integer bno, String uid) throws Exception {
		return boardDAO.getLikeCheck(bno, uid);
	}

	@Override
	public void likeCancel(Integer bno, String uid) throws Exception {
		boardDAO.likeCancel(bno, uid);
	}

	@Override
	public int isEmptyLike(Integer bno, String uid) throws Exception {
		return boardDAO.isEmptyLike(bno, uid);
	}

	@Override
	public void updateLike(Integer bno, String uid) throws Exception {
		boardDAO.updateLike(bno, uid);
	}

	@Override
	public List<liketoVO> getHeart(String uid) throws Exception {
		return boardDAO.getHeart(uid);
	}

	@Override
	public int getHeartOne(Integer bno, String uid) throws Exception {
		return boardDAO.getHeartOne(bno, uid);
	}

	@Override
	public List<SnsBoardVO> myListSearchCriteria(SnsSearchCriteria cri, String uid) throws Exception {
		return boardDAO.myListSearch(cri, uid);
	}

	@Override
	public int myListSearchCount(SnsSearchCriteria cri, String uid) throws Exception {
		return boardDAO.myListSearchCount(cri, uid);
	}
	

}
