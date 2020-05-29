package com.emma.ssm.service;

import java.util.List;

import com.emma.ssm.entity.PcaAreas;
import com.emma.ssm.entity.PcaCities;
import com.emma.ssm.entity.PcaProvinces;

public interface PCAService {
	
	List<PcaProvinces> selectList();
	List<PcaCities> selectByProvinceId(String province_id);
	List<PcaAreas> selectByCityId(String City_id);

}
