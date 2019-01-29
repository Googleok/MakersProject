package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.QnaBoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.SearchCriteria;

public interface QnaBoardDAO {
	
	public void create(QnaBoardVO vo)throws Exception;
	
	public QnaBoardVO read(Integer bno)throws Exception;
	
	public void update(QnaBoardVO vo)throws Exception;
	
	public void delete(Integer bno)throws Exception;
	
	public List<QnaBoardVO> listAll()throws Exception;
	
	public List<QnaBoardVO> listPage(int page) throws Exception;
	
	public List<QnaBoardVO> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;

	public List<QnaBoardVO> listSearch(SearchCriteria cri)throws Exception;
	
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount)throws Exception;
	
	public void updateViewCnt(Integer bno)throws Exception;
	
	public void addAttach(String fullName)throws Exception;
	
	public List<String> getAttach(Integer bno)throws Exception;
	
	public void deleteAttach(Integer bno)throws Exception;
	
	public void replaceAttach(String fullName, Integer bno)throws Exception;
}
