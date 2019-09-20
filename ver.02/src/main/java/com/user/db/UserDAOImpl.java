package com.user.db;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	SqlSession sqlSession;

	private static final String nameSpace = "com.user.mapper.userMapper";

	@Override
	public boolean userLogin(UserDTO dto) throws Exception {
		String name = sqlSession.selectOne(nameSpace + ".userLogin", dto);
		return (name == null) ? false : true;
	}

	@Override
	public void userJoin(UserDTO dto) throws Exception {
		sqlSession.insert(nameSpace + ".userJoin", dto);
	}
}
