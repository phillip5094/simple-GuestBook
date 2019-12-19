package kr.co.service;

import java.util.List;

import kr.co.vo.BoardVO;

public interface BoardService {
	public void write(BoardVO boardVO) throws Exception;
	
	public List<BoardVO> list() throws Exception;
}
