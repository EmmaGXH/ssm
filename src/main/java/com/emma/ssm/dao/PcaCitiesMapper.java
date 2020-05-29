package com.emma.ssm.dao;

import java.util.List;

import com.emma.ssm.entity.PcaCities;

public interface PcaCitiesMapper {
   

    List<PcaCities> selectByProvinceId(String province_id);

    
}