package com.emma.ssm.service.impl;

import java.util.List;

import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emma.ssm.dao.PcaAreasMapper;
import com.emma.ssm.dao.PcaCitiesMapper;
import com.emma.ssm.dao.PcaProvincesMapper;
import com.emma.ssm.entity.PcaAreas;
import com.emma.ssm.entity.PcaCities;
import com.emma.ssm.entity.PcaProvinces;
import com.emma.ssm.service.PCAService;

@Service
public class PCAServiceImpl implements PCAService {
	
	@Autowired
	private PcaProvincesMapper pcaProvincesMapper;	
	@Autowired
	private PcaCitiesMapper pcaCitiesMapper;
	@Autowired
	private PcaAreasMapper pcaAreasMapper;

	@Override
	public List<PcaProvinces> selectList() {
		return pcaProvincesMapper.selectList();
	}

	@Override
	public List<PcaCities> selectByProvinceId(String province_id) {
		
		return pcaCitiesMapper.selectByProvinceId(province_id);
	}

	@Override
	public List<PcaAreas> selectByCityId(String city_id) {
		
		return pcaAreasMapper.selectByCityId(city_id);
	}

}
