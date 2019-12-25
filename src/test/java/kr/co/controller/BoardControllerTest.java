package kr.co.controller;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.vo.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class BoardControllerTest {

	@Inject
	private SqlSessionFactory sqlFactory;

	@Before
	public void init() {
		try (SqlSession session = sqlFactory.openSession()) {
			session.delete("boardMapper.deleteAll");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	@Test
	public void newPostTest() throws Exception {
		try (SqlSession session = sqlFactory.openSession()) {
			BoardVO boardVO = new BoardVO();
			boardVO.setEmail("test01@naver.com");
			boardVO.setPwd("1111");
			boardVO.setContent("Junit Test");
			session.insert("boardMapper.insert", boardVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void printPostTest() throws Exception{
		try (SqlSession session = sqlFactory.openSession()) {
			System.out.println(session.selectList("boardMapper.list"));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Test
	public void updatePostTest() throws Exception{
		try (SqlSession session = sqlFactory.openSession()) {
			BoardVO boardVO = new BoardVO();
			boardVO.setEmail("test01@naver.com");
			boardVO.setContent("Junit Test update");
			session.update("boardMapper.update", boardVO);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Test
	public void checkEmailTest() throws Exception{
		try (SqlSession session = sqlFactory.openSession()) {
			BoardVO boardVO = new BoardVO();
			boardVO.setEmail("test02");
			boardVO.setPwd("1111");
			boardVO.setContent("Invalid Email");
			session.insert("boardMapper.insert", boardVO);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}


