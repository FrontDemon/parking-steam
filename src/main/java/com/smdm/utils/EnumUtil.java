package com.smdm.utils;

import com.smdm.statusenum.CodeEnum;

/**
 * enum的工具类
 * @author manRED
 *
 */
public class EnumUtil {
	/**
	 * 获取enum的对象
	 * @param code enum的状态码
	 * @param enumclass enum的类
	 * @return enum的对象
	 */
	public static <T extends CodeEnum>T getByCode(int code, Class<T> enumclass){
		for(T each:enumclass.getEnumConstants()) {
			if(code==each.getCode()) {
				return each;
			}
		}
		return null;
	}
}
