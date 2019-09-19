package com.board.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;

	private static final String nameSpace = "com.board.mappers.boardMapper";

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList(nameSpace + ".boardList");
	}

	@Override
	public BoardDTO boardDetail(int no) throws Exception {
		return sqlSession.selectOne(nameSpace + ".boardRead", no);
	}

	@Override
	public void boardHit(int no) throws Exception {
		sqlSession.update(nameSpace + ".boardHit", no);
	}

	@Override
	public void boardDelete(int no) throws Exception {
		sqlSession.update(nameSpace + ".boardDelete", no);
	}

	@Override
	public void boardWrite(BoardDTO dto) throws Exception {
		sqlSession.insert(nameSpace + ".boardWrite", dto);
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		sqlSession.update(nameSpace + ".boardEdit", dto);
	}

}
