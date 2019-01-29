package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.SnsReplyVO;

public interface SnsReplyDAO {
	
	public List<SnsReplyVO> list(Integer bno) throws Exception;
	public void create(SnsReplyVO vo)throws Exception;
	public void update(SnsReplyVO vo)throws Exception;
	public void delete(Integer rno)throws Exception;
	public void deleteAll(Integer bno)throws Exception;
	public List<SnsReplyVO> listPage(Integer bno) throws Exception;
	public int count(Integer bno)throws Exception;
	public int getBno(Integer rno)throws Exception;
	
}
