package com.user.service;

import javax.servlet.http.HttpSession;

import com.user.db.UserDTO;

public interface UserService {
	
	public boolean userLogin(UserDTO dto, HttpSession session) throws Exception;
	
	public void userJoin(UserDTO dto) throws Exception;

}
