package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.NoticeReplyVO;

public interface NoticeReplyDAO {
	
	public List<NoticeReplyVO> list(Integer bno) throws Exception;
	public void create(NoticeReplyVO vo)throws Exception;
	public void update(NoticeReplyVO vo)throws Exception;
	public void delete(Integer rno)throws Exception;
	public void deleteAll(Integer bno)throws Exception;
	public List<NoticeReplyVO> listPage(Integer bno,
			Criteria cri) throws Exception;
	public int count(Integer bno)throws Exception;
	public int getBno(Integer rno)throws Exception;
	
}
