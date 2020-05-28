package com.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.blog.pojo.Plan;
import com.blog.service.PlanService;
import com.blog.service.UserService;

@Controller
@RequestMapping("/page")
public class HomepageControllor {
	@Autowired
	PlanService ps;
	
	@ResponseBody
	@RequestMapping("/submitPlanContext")
    public Plan submitUser(@RequestBody Plan plan) {
		System.out.println("SSM���ܵ�������ύ��json����ת��ΪCategory����:"+plan+"plan����");
		ps.add(plan);
        return plan;
    }
	
//	@ResponseBody
//	@RequestMapping("/submitPlanContext")
//    public String submitUser() {
//		System.out.println("SSM���ܵ�������ύ��json����ת��ΪCategory����:");
//        return "ok";
//    }
    
}
