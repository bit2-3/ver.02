package com.user.db;

// DB ¿¬°á
public interface UserDAO {
	public boolean userLogin(UserDTO dto) throws Exception;

	public void userJoin(UserDTO dto) throws Exception;

	public UserDTO userDetail(String id) throws Exception;

	public void userEdit(UserDTO dto) throws Exception;

	public void userDelete(String id) throws Exception;
}
