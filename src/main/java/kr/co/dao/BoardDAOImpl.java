package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void write(BoardVO boardVO) throws Exception{
		sqlSession.insert("boardMapper.insert", boardVO);
	}

	@Override
	public List<BoardVO> list() throws Exception {
		return sqlSession.selectList("boardMapper.list");
	}

	@Override
	public BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("boardMapper.read", bno);
	}

	@Override
	public void update(BoardVO boardVO) throws Exception {
		sqlSession.update("boardMapper.update", boardVO);
	}

	@Override
	public boolean checkPw(BoardVO boardVO) throws Exception {
		List<BoardVO> result = sqlSession.selectList("boardMapper.checkPw", boardVO);
		if(result.size() == 1) {
			if(result.get(0).getPwd().equals(boardVO.getPwd())) {
				return true;
			}
			return false;
		}
		else {
			return false;
		}

	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("boardMapper.delete", bno);
	}

	@Override
	public void deleteAll() throws Exception {
		sqlSession.delete("boardMapper.deleteAll");
		
	}
}
