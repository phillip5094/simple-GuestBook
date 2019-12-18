package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO dao;
	
	@Override
	public void write(BoardVO boardVO) throws Exception {
		dao.write(boardVO);
	}

}
