package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.QnaBoardVO;
import org.zerock.domain.SearchCriteria;

public interface QnaBoardService {
	
	public void regist(QnaBoardVO board) throws Exception;
	public QnaBoardVO read(Integer bno) throws Exception;
	public void modify(QnaBoardVO board) throws Exception;
	public void remove(Integer bno) throws Exception;
	public  List<QnaBoardVO> listAll() throws Exception;
	public  List<QnaBoardVO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
	public  List<QnaBoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public List<String> getAttach(Integer bno)throws Exception;
}
