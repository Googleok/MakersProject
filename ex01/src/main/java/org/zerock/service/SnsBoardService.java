package org.zerock.service;

import java.util.List;

import org.zerock.domain.SnsBoardVO;
import org.zerock.domain.SnsCriteria;
import org.zerock.domain.SnsSearchCriteria;
import org.zerock.domain.liketoVO;

public interface SnsBoardService {
	
	public void regist(SnsBoardVO board) throws Exception;
	public SnsBoardVO read(Integer bno) throws Exception;
	public void modify(SnsBoardVO board) throws Exception;
	public void remove(Integer bno) throws Exception;
	public  List<SnsBoardVO> listAll() throws Exception;
	public  List<SnsBoardVO> listCriteria(SnsCriteria cri) throws Exception;
	public int listCountCriteria(SnsCriteria cri) throws Exception;
	public  List<SnsBoardVO> listSearchCriteria(SnsSearchCriteria cri) throws Exception;
	public int listSearchCount(SnsSearchCriteria cri) throws Exception;
	public List<String> getAttach(Integer bno)throws Exception;
	public List<String> getPhotoNum(Integer bno)throws Exception;
	public void likeTo(Integer bno, String uid) throws Exception;
	public int getLikeCnt(Integer bno)throws Exception;
	public void upLikeCnt(Integer bno)throws Exception;
	public void downLikeCnt(Integer bno)throws Exception;
	public int getLikeCheck(Integer bno, String uid)throws Exception;
	public void likeCancel(Integer bno, String uid)throws Exception;
	public int isEmptyLike(Integer bno, String uid)throws Exception;
	public void updateLike(Integer bno, String uid)throws Exception;
	public List<liketoVO> getHeart(String uid) throws Exception;
	public int getHeartOne(Integer bno, String uid) throws Exception;
	public List<SnsBoardVO> myListSearchCriteria(SnsSearchCriteria cri, String uid)throws Exception;
	public int myListSearchCount(SnsSearchCriteria cri, String uid) throws Exception;
	
}
