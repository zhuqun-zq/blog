package com.blog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.UserMapper;
import com.blog.pojo.User;
import com.blog.service.UserService;
import com.blog.util.Page;

@Service
public class UserServiceImpl  implements UserService{
	@Autowired
	UserMapper userMapper;
	
	
	public List<User> list(){
		return userMapper.list();
	}


	@Override
	public List<User> list(Page page) {
		// TODO Auto-generated method stub
		return userMapper.list(page);
	}


	@Override
	public int total() {
		return userMapper.total();
	}


	@Override
	public void add(User c) {
		userMapper.add(c);
		
	}


	@Override
	public void update(User c) {
		userMapper.update(c);
	}


	@Override
	public void delete(User c) {
		userMapper.delete(c.getId());
	}


	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return userMapper.get(id);
	};

}
