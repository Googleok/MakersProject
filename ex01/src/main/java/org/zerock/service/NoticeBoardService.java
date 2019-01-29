package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.NoticeBoardVO;
import org.zerock.domain.SearchCriteria;

public interface NoticeBoardService {
	
	public void regist(NoticeBoardVO board) throws Exception;
	public NoticeBoardVO read(Integer bno) throws Exception;
	public void modify(NoticeBoardVO board) throws Exception;
	public void remove(Integer bno) throws Exception;
	public  List<NoticeBoardVO> listAll() throws Exception;
	public  List<NoticeBoardVO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
	public  List<NoticeBoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public List<String> getAttach(Integer bno)throws Exception;
}
