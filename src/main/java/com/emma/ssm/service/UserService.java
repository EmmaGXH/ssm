package com.emma.ssm.service;

import java.util.List;

import com.emma.ssm.common.JsonBean;
import com.emma.ssm.entity.TbUser;


public interface UserService {
	
	int save(TbUser tbUser);  
	int delete(Integer id); 
	
	TbUser selectById(Integer id); 
	List<TbUser> selectBySelected(TbUser tbUser); 
	JsonBean update(TbUser tbUser);
	JsonBean selectList();

	
}
