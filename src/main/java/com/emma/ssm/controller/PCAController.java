package com.emma.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.emma.ssm.common.JsonBean;
import com.emma.ssm.service.PCAService;

@Controller
@RequestMapping("pca")
public class PCAController {
	
	@Autowired
	private PCAService pcaService;
	
	/**
	 * 查询所有省份
	 * @return
	 */
	@RequestMapping("province")
	@ResponseBody
	public JsonBean provice() {
		
		return new JsonBean(0,"ok",pcaService.selectList());
	}
	
	/**
	 * 依据省份id查找所有城市
	 * @param provinceId
	 * @return
	 */
	@RequestMapping("city")
	@ResponseBody
	public JsonBean city(String province_id) {
		
		return new JsonBean(0,"ok",pcaService.selectByProvinceId(province_id));
	}
	
	/**
	 * 依据城市查找所有县区
	 * @param cityId
	 * @return
	 */
	@RequestMapping("area")
	@ResponseBody
	public JsonBean area(String city_id) {
		
		return new JsonBean(0,"ok",pcaService.selectByCityId(city_id));
	}
	
}
