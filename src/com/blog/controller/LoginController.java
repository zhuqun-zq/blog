package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.blog.pojo.User;
import com.blog.service.UserService;

@Controller
@RequestMapping("/page")
public class LoginController {
	@Autowired
	UserService us;
	
	@ResponseBody
	@RequestMapping("/login")
    public ModelAndView submitUser(@RequestParam("userName")String userName,@RequestParam("password")String password) {
    	//System.out.println(userName+password);
    	//us.checkPassword(userName, password);
		//System.out.println("提交的信息为:"+user);
		ModelAndView mav = new ModelAndView();
		int checkFlag= us.checkPassword(userName, password);//0-defalut   1-allTrue   2-userNameTrue,passwordFalse  3-userNameNotExist
		if(checkFlag==1){
			mav.setViewName("homepage");
		}else{
			mav.setViewName("loginFail");
		}
        return mav;
    }
	
	@ResponseBody
	@RequestMapping("/login/addNewUser")
    public String addNewUser(@RequestBody User user) {
    	//System.out.println(userName+password);
    	//us.checkPassword(userName, password);
		String result="111";
		System.out.println("提交的信息为:"+user);
		user.setRole("1");
		us.add(user);
		return result;
    }
    
}
