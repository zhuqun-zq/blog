package com.blog.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.blog.pojo.User;

// 告诉spring mvc这是�?个控制器�?
@Controller
@RequestMapping("")
public class UserController {
    @ResponseBody
	@RequestMapping("/submitUser")
    public String submitUser() {
    	System.out.println("1111");
		//System.out.println("�ύ����ϢΪ:"+user);
        return "ok";
    }
    
    @ResponseBody
    @RequestMapping("/getOneUser")
    public String getOneUser() {
    	 User c = new User();
         c.setId(100);
    	 c.setUserName("�̻�");
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
			c.setUserName("�û�"+i);
			cs.add(c);
		}

    	return JSONObject.toJSON(cs).toString();
    }


}
