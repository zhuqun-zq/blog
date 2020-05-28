package com.blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.mapper.PlanMapper;
import com.blog.pojo.Plan;
import com.blog.service.PlanService;
@Service
public class PlanSeriveImpl implements PlanService{
	@Autowired PlanMapper pm;
	@Override
	public void add(Plan plan) {
		pm.add(plan);
		
	}

}
