package com.emma.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emma.ssm.common.JsonBean;
import com.emma.ssm.dao.TbUserMapper;
import com.emma.ssm.entity.TbUser;
import com.emma.ssm.service.UserService;

@Service
public class UseServiceImpl implements UserService {

	@Autowired
	private TbUserMapper tbUserMapper;

	
	@Override
	public int save(TbUser tbUser) {
		
		return tbUserMapper.insert(tbUser);
	}

	@Override
	public int delete(Integer id) {
		
		return tbUserMapper.deleteByPrimaryKey(id);
	}

	@Override
	public TbUser selectById(Integer id) {
		
		return tbUserMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<TbUser> selectBySelected(TbUser tbUser) {
		
		return tbUserMapper.selectBySelectedList(tbUser);
	}

	@Override
	public JsonBean update(TbUser tbUser) {
		JsonBean jsonBean = new JsonBean(-1,"erro",null);
		int i = tbUserMapper.updateByPrimaryKeySelective(tbUser);
		if (0<i) {
			jsonBean=new JsonBean(0,"ok",null);
		}
		return jsonBean;
	}

	@Override
	public JsonBean selectList() {
		JsonBean jsonBean = new JsonBean(-1,"ERRO","系统出现异常");
		List<TbUser> userlist = tbUserMapper.selectBylist();
		if (userlist.size()>0) {
			jsonBean =new JsonBean(0,"OK",userlist);
		}
		return jsonBean;
	}
	


}
