package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.QnaBoardVO;
import org.zerock.domain.SearchCriteria;

@Repository
public class QnaBoardDAOImpl implements QnaBoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static String namespace
	= "org.zerock.mapper.QnaBoardMapper";
	
	@Override
	public void create(QnaBoardVO vo) throws Exception {
		sqlSession.insert(namespace+".create", vo);
	}

	@Override
	public QnaBoardVO read(Integer bno) throws Exception {
		return sqlSession.selectOne(namespace+".read", bno);
	}

	@Override
	public void update(QnaBoardVO vo) throws Exception {
		sqlSession.update(namespace+".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		sqlSession.delete(namespace+".delete", bno);
	}

	@Override
	public List<QnaBoardVO> listAll() throws Exception {
		return sqlSession.selectList(namespace+".listAll");
	}

	@Override
	public List<QnaBoardVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		return sqlSession.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<QnaBoardVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".countPaging", cri);
	}

	@Override
	public List<QnaBoardVO> listSearch(SearchCriteria cri) throws Exception {

		return sqlSession.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".listSearchCount", cri);
	}

	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("bno", bno);
		paramMap.put("amount", amount);
		
		sqlSession.update(namespace+".updateReplyCnt", paramMap);
	}

	@Override
	public void updateViewCnt(Integer bno) throws Exception {
		System.out.println("업데이트뷰카운트");
		sqlSession.update(namespace+".updateViewCnt", bno);
	}

	@Override
	public void addAttach(String fullName) throws Exception {
		sqlSession.insert(namespace+".addAttach", fullName);
	}

	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		
		return sqlSession.selectList(namespace+".getAttach", bno);
	}

	@Override
	public void deleteAttach(Integer bno) throws Exception {
		sqlSession.delete(namespace+".deleteAttach", bno);
	}

	@Override
	public void replaceAttach(String fullName, Integer bno) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("bno", bno);
		paramMap.put("fullName", fullName);
		
		sqlSession.insert(namespace+".replaceAttach", paramMap);
	}

}
