package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zerock.domain.SnsBoardVO;
import org.zerock.domain.SnsCriteria;
import org.zerock.domain.SnsSearchCriteria;
import org.zerock.domain.liketoVO;

@Repository
public class SnsBoardDAOImpl implements SnsBoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static String namespace
	= "org.zerock.mapper.SnsBoardMapper";
	
	@Override
	public void create(SnsBoardVO vo) throws Exception {
		sqlSession.insert(namespace+".create", vo);
	}

	@Override
	public SnsBoardVO read(Integer bno) throws Exception {
		return sqlSession.selectOne(namespace+".read", bno);
	}

	@Override
	public void update(SnsBoardVO vo) throws Exception {
		sqlSession.update(namespace+".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		sqlSession.delete(namespace+".delete", bno);
	}

	@Override
	public List<SnsBoardVO> listAll() throws Exception {
		return sqlSession.selectList(namespace+".listAll");
	}

	@Override
	public List<SnsBoardVO> listPage(int page) throws Exception {
		if(page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		return sqlSession.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<SnsBoardVO> listCriteria(SnsCriteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(SnsCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".countPaging", cri);
	}

	@Override
	public List<SnsBoardVO> listSearch(SnsSearchCriteria cri) throws Exception {

		return sqlSession.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SnsSearchCriteria cri) throws Exception {
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
	public void addAttach(String fullName, int i) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("fullName", fullName);
		paramMap.put("photoNum", i);
		sqlSession.insert(namespace+".addAttach", paramMap);
	}

	@Override
	public List<String> getAttach(Integer bno) throws Exception {
		System.out.println("겟어타치");
		return sqlSession.selectList(namespace+".getAttach", bno);
	}
	
	@Override
	public List<String> getPhotoNum(Integer bno) throws Exception {
		return sqlSession.selectList(namespace+".getPhotoNum", bno);
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

	@Override
	public void likeTo(Integer bno, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("uid", uid);
		
		sqlSession.insert("createLike", paramMap);
	}

	@Override
	public int getLikeCnt(Integer bno) throws Exception {
		return sqlSession.selectOne("getLikeCnt", bno);
	}

	@Override
	public void upLikeCnt(Integer bno) throws Exception {
		sqlSession.update("upLikeCnt", bno);
	}

	@Override
	public void downLikeCnt(Integer bno) throws Exception {
		sqlSession.update("downLikeCnt", bno);
	}

	@Override
	public int getLikeCheck(Integer bno, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("uid", uid);
		
		return sqlSession.selectOne("getLikeCheck", paramMap);
	}

	@Override
	public void likeCancel(Integer bno, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("uid", uid);
		
		sqlSession.update("likeCancel", paramMap);
	}

	@Override
	public int isEmptyLike(Integer bno, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("uid", uid);
		
		return sqlSession.selectOne("isEmptyLike", paramMap);
	}

	@Override
	public void updateLike(Integer bno, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("uid", uid);
		
		sqlSession.update("updateLike", paramMap);
	}

	@Override
	public List<liketoVO> getHeart(String uid) throws Exception {
		return sqlSession.selectList("getHeart", uid);
	}

	@Override
	public int getHeartOne(Integer bno, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("bno", bno);
		paramMap.put("uid", uid);
		
		return sqlSession.selectOne("getHeartOne", paramMap);
	}

	@Override
	public List<SnsBoardVO> myListSearch(SnsSearchCriteria cri, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("cri", cri);
		paramMap.put("uid", uid);
		return sqlSession.selectList("myListSearch", paramMap);
	}

	@Override
	public int myListSearchCount(SnsSearchCriteria cri, String uid) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("cri", cri);
		paramMap.put("uid", uid);
		
		return sqlSession.selectOne("myListSearchCount", paramMap);
	}

}
