package com.smdm.statusenum;

/**
 * showorder页面状态
 * @author 25129
 *
 */
public enum PageEnum {
	PERSONAL(1,"个人信息"),
	CHANGEMESS(2,"修改密码"),
	MYORDER(3,"我的订单"),
	LEAVEMESS(4,"留言"),
	;
	private int code;
	private String msg;

	private PageEnum(int code, String msg) {
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
