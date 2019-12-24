package kr.co.controller;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BoardService;
import kr.co.vo.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	BoardService service;
	
	@RequestMapping(value="/board/writeView", method=RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
	}
	
	@RequestMapping(value="/board/write", method=RequestMethod.POST)
	public String write(BoardVO boardVO) throws Exception{
		boolean isValid = false;
		logger.info("write");
		
		/* email 유효성 검사 */
		String email = boardVO.getEmail();
		String regex = "^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$"; 
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(email);
		if(m.matches()) {
			isValid = true;
		}
		
		if(isValid) {
			logger.info("write success");
			service.write(boardVO);
			return "redirect:/board/list";
		} else {
			logger.info("write fail");
			return "redirect:/board/writeFail";
		}
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		
		List<BoardVO> lists = service.list();
		for(BoardVO tmp : lists) {
			tmp.setContent(tmp.getContent().replaceAll("\n", "<br>"));
		}
		model.addAttribute("list", lists);
		
		return "board/list";
	}
	
	@RequestMapping(value="/readView", method=RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception{
		logger.info("read");
		
		model.addAttribute("read", service.read(boardVO.getBno()));
		
		return "board/readView";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(BoardVO boardVO) throws Exception{
		logger.info("request update");
		logger.info("checkPw first");
		
		boolean result = service.checkPw(boardVO);
		if(result == true) {
			logger.info("pwd correct");
			service.update(boardVO);
			return "redirect:/board/list";
		}
		else {
			logger.info("pwd incorrect");
			return "redirect:/board/updateFail";
		}	
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(BoardVO boardVO) throws Exception{
		logger.info("request delete");
		boolean result = service.checkPw(boardVO);
		
		if(result == true) {
			logger.info("pwd correct");
			service.delete(boardVO.getBno());
			return "redirect:/board/list";
		}
		else {
			logger.info("pwd incorrect");
			return "redirect:/board/updateFail";
		}
	}
	
	@RequestMapping(value="/deleteAll", method=RequestMethod.GET)
	public void deleteAll() throws Exception{
		logger.info("deleteAll");
	}
	
	@RequestMapping(value="/updateFail", method=RequestMethod.GET)
	public String updateFail() throws Exception{
		return "board/updateFail";
	}
	
	@RequestMapping(value="/writeFail", method=RequestMethod.GET)
	public String writeFail() throws Exception{
		return "board/writeFail";
	}
}
