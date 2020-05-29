package com.emma.ssm.entity;

public class PcaAreas {
    private String area_id;

    private String area_name;

    private String city_id;

    public String getArea_id() {
        return area_id;
    }

    public void setArea_id(String area_id) {
        this.area_id = area_id == null ? null : area_id.trim();
    }

    public String getArea_name() {
        return area_name;
    }

    public void setArea_name(String area_name) {
        this.area_name = area_name == null ? null : area_name.trim();
    }

    public String getCity_id() {
        return city_id;
    }

    public void setCity_id(String city_id) {
        this.city_id = city_id == null ? null : city_id.trim();
    }
}