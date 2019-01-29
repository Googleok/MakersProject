package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.QnaReplyVO;

public interface QnaReplyDAO {
	
	public List<QnaReplyVO> list(Integer bno) throws Exception;
	public void create(QnaReplyVO vo)throws Exception;
	public void update(QnaReplyVO vo)throws Exception;
	public void delete(Integer rno)throws Exception;
	public void deleteAll(Integer bno)throws Exception;
	public List<QnaReplyVO> listPage(Integer bno,
			Criteria cri) throws Exception;
	public int count(Integer bno)throws Exception;
	public int getBno(Integer rno)throws Exception;
	
}
