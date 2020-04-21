package com.blog.service;

import java.util.List;

import com.blog.pojo.User;
import com.blog.util.Page;

public interface UserService {

	List<User> list();
	int total();
	List<User> list(Page page);
	void add(User c);
	void update(User c);
	void delete(User c);
	User get(int id);
	
	int checkPassword(String userName,String password);

}
