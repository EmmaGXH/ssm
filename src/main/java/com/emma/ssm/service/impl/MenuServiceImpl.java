package com.emma.ssm.service.impl;

import java.util.List;

import javax.enterprise.inject.New;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emma.ssm.common.JsonBean;
import com.emma.ssm.dao.MenuMapper;
import com.emma.ssm.entity.Menu;
import com.emma.ssm.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuMapper MenuMapper;
	

	@Override
	public JsonBean selectMenuList() {
		JsonBean jsonBean = new JsonBean(-1,"erro",null);
		List<Menu> selectListMenus = MenuMapper.selectListMenus();
		if (selectListMenus.size()>0) {
			jsonBean=new JsonBean(0,"ok",selectListMenus);
		}
		return jsonBean;
	}

}
