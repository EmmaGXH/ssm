package com.emma.ssm.entity;

public class PcaProvinces {
    private String province_id;

    private String province_name;

    public String getProvince_id() {
        return province_id;
    }

    public void setProvince_id(String province_id) {
        this.province_id = province_id == null ? null : province_id.trim();
    }

    public String getProvince_name() {
        return province_name;
    }

    public void setProvince_name(String province_name) {
        this.province_name = province_name == null ? null : province_name.trim();
    }
}