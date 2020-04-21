package com.blog.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.blog.pojo.User;
import com.blog.service.UserService;


@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	UserService us;
	
    @ResponseBody
	@RequestMapping("/submitUser")
    public String submitUser(@RequestBody String jsonString) {
    	System.out.println(jsonString);
		//System.out.println("提交的信息为:"+user);
        return "ok";
    }
    
    @ResponseBody
    @RequestMapping("/getOneUser")
    public String getOneUser() {
    	 User c = new User();
         c.setId(100);
    	 c.setUserName("程换");
         JSONObject json= new JSONObject();
         json.put("user", JSONObject.toJSON(c));
      	 return json.toJSONString();
    }
    @ResponseBody
    @RequestMapping("/getManyUser")
    public String getManyUser() {
    	List<User> cs = new ArrayList<>();
    	for (int i = 0; i < 10; i++) {
			User c = new User();
			c.setId(i);
			c.setUserName("用户"+i);
			cs.add(c);
		}

    	return JSONObject.toJSON(cs).toString();
    }


}
