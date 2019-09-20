package com.user.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.user.db.UserDAO;
import com.user.db.UserDTO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	@Override
	public boolean userLogin(UserDTO dto, HttpSession session) throws Exception {
		boolean result = dao.userLogin(dto);
		if (result) {
			session.setAttribute("id", dto.getId());
		}
		return result;
	}

	@Override
	public void userJoin(UserDTO dto) throws Exception {
		dto.setId(dto.getId());
		dto.setPw(dto.getPw());
		dto.setName(dto.getName());
		dto.setZipcode(dto.getZipcode());
		dto.setAddr1(dto.getAddr1());
		dto.setAddr2(dto.getAddr2());
		dto.setPhone(dto.getPhone());
		dto.setEmail(dto.getEmail());

		dao.userJoin(dto);
	}

	@Override
	public UserDTO userDetail(String id) throws Exception {
		return dao.userDetail(id);
	}

	@Override
	public void userEdit(UserDTO dto) throws Exception {
		dao.userEdit(dto);
	}

	@Override
	public void userDelete(String id, HttpSession session) throws Exception {
		session.invalidate();
		dao.userDelete(id);
	}

	@Override
	public void userLogout(HttpSession session) throws Exception {
		session.invalidate();
	}

}
