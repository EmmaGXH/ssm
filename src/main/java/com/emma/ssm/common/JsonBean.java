package com.emma.ssm.common;

public class JsonBean {
	
	private int code;//-1 错误  0 OK 999 系统异常
	private String msg; //成功信息
	private Object data;//返回的数据

	public JsonBean() {}
	public JsonBean(int code, String msg, Object data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	
}
