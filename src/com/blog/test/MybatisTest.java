package com.blog.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.blog.mapper.UserMapper;
import com.blog.pojo.User;
import com.blog.util.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MybatisTest {

	@Autowired
	private UserMapper userMapper;

//	@Test
	public void testAdd() {
		for (int i = 0; i < 100; i++) {
			User user = new User();
			user.setUserName("new user");
			userMapper.add(user);
		}

	}
	
	@Test
	public void testTotal() {
		int total = userMapper.total();
		System.out.println(total);
	}

	@Test
	public void testList() {
		Page p = new Page();
		p.setStart(2);
		p.setCount(3);
		List<User> cs=userMapper.list(p);
		for (User c : cs) {
			System.out.println(c.getUserName());
		}
	}

}
