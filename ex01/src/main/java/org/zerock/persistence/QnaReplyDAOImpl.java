package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.QnaReplyVO;
@Repository
public class QnaReplyDAOImpl implements QnaReplyDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static String namespace = "org.zerock.mapper.QnaReplyMapper";
	
	@Override
	public List<QnaReplyVO> list(Integer bno) throws Exception {
		return sqlSession.selectList(namespace+".list", bno);
	}

	@Override
	public void create(QnaReplyVO vo) throws Exception {
		sqlSession.insert(namespace+".create", vo);
	}

	@Override
	public void update(QnaReplyVO vo) throws Exception {
		sqlSession.update(namespace+".update", vo);
	}

	@Override
	public void delete(Integer rno) throws Exception {
		sqlSession.delete(namespace+".delete", rno);
	}

	@Override
	public List<QnaReplyVO> listPage(Integer bno, Criteria cri) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("cri", cri);
		
		return sqlSession.selectList(namespace+".listPage", paramMap);
	}

	@Override
	public int count(Integer bno) throws Exception {
		return sqlSession.selectOne(namespace+".count", bno);
	}

	@Override
	public int getBno(Integer rno) throws Exception {
		return sqlSession.selectOne(namespace+".getBno", rno);
	}

	@Override
	public void deleteAll(Integer bno) throws Exception {
		sqlSession.delete(namespace+".deleteAll", bno);	
	}

}
