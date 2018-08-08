package com.smdm.statusenum;

public enum LotEnum {
	EMPTY(0,"空车位"),
	USE(1,"车位已经使用"),
	;
	private int code;
	private String msg;
	private LotEnum(int code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	public int getCode() {
		return code;
	}
	public String getMsg() {
		return msg;
	}
	
}
