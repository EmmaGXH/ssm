package com.emma.ssm.dao;

import java.util.List;

import com.emma.ssm.entity.PcaAreas;

public interface PcaAreasMapper {
   

    List<PcaAreas> selectByCityId(String city_id);

}