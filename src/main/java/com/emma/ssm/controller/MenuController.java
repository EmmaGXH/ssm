package com.emma.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.emma.ssm.common.JsonBean;
import com.emma.ssm.service.MenuService;

@Controller
@RequestMapping("menu")
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("list")
	@ResponseBody
	public JsonBean list() {
		return menuService.selectMenuList();
	}
	
	@RequestMapping("toList")
	public String toList() {
		return "layuicrud/list";
	}

}
