package com.user.service;

import javax.servlet.http.HttpSession;

import com.user.db.UserDTO;

public interface UserService {

	public boolean userLogin(UserDTO dto, HttpSession session) throws Exception;

	public void userJoin(UserDTO dto) throws Exception;

	public UserDTO userDetail(String id) throws Exception;

	public void userEdit(UserDTO dto) throws Exception;

	public void userDelete(String id, HttpSession session) throws Exception;

	public void userLogout(HttpSession session) throws Exception;
}
