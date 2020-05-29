package com.emma.ssm.entity;

public class PcaCities {
    private String city_id;

    private String city_name;

    private String province_id;

    public String getCity_id() {
        return city_id;
    }

    public void setCity_id(String city_id) {
        this.city_id = city_id == null ? null : city_id.trim();
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name == null ? null : city_name.trim();
    }

    public String getProvince_id() {
        return province_id;
    }

    public void setProvince_id(String province_id) {
        this.province_id = province_id == null ? null : province_id.trim();
    }
}