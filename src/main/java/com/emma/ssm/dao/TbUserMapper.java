package com.emma.ssm.dao;

import java.util.List;

import com.emma.ssm.entity.TbUser;

public interface TbUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbUser record);

    int insertSelective(TbUser record);

    TbUser selectByPrimaryKey(Integer id);
    List<TbUser> selectBySelectedList(TbUser tbUser);

    int updateByPrimaryKeySelective(TbUser record);

    int updateByPrimaryKey(TbUser record);

	List<TbUser> selectBylist();
}