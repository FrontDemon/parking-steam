package com.smdm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smdm.bean.Msg;
import com.smdm.service.AdminService;
import com.smdm.service.UserService;

@Controller
public class RegisteController {
	@Autowired
	UserService userService;
	@Autowired
	AdminService adminService;
	
	/*
	 * 用户注册验证
	 */
	@RequestMapping(value = "/userRegiste", method = RequestMethod.POST)
	@ResponseBody
	public Msg userRegister(@RequestParam(value="account",defaultValue="")String account, 
			@RequestParam(value="password",required=false)String password,
			@RequestParam(value="telephone",required=false)String telephone,
			@RequestParam(value="licenseNumber",required=false)String licenseNumber) {
		
		if(account.isEmpty())
			return Msg.fail(1,"账号为空！");
		
		boolean test1 = userService.accountIsExist(account);
		if(test1==true)
			return Msg.fail(2,"此账号已注册！");
		else if(password.isEmpty())
			return Msg.success(3,"此账号可以注册，但未输入密码！");
		else if(telephone.isEmpty())
			return Msg.fail(4,"电话号码为空！");
		else if(licenseNumber.isEmpty())
			return Msg.fail(5,"车牌号码为空！");
		else {
			//进行插入操作
			int result = userService.registerUser(account,password,telephone,licenseNumber);
			if(result == -1)
				return Msg.fail(6,"用户账号注册失败！");
			else
				return Msg.success(7, "注册成功！");
		}
					
	}
	
	/*
	 * 管理员注册验证
	 */
	@RequestMapping(value = "/adminRegiste", method = RequestMethod.GET)
	@ResponseBody
	public Msg adminRegister(@RequestParam(value="account",defaultValue="")String account, 
			@RequestParam(value="password",required=false)String password,
			@RequestParam(value="password2",required=false)String password2) {
		
		if(account.isEmpty())
			return Msg.fail(1,"账号为空！");
		
		boolean test1 = adminService.accountIsExist(account);
		if(test1==true)
			return Msg.fail(2,"此账号已注册！");
		else if(password.isEmpty() || password2.isEmpty())
			return Msg.success(3,"此账号可以注册，但未输入密码！");
		else if(password.equals(password2)==false)
			return Msg.fail(4,"两次输入的密码不相同！");
		else {
			//进行插入操作
			int result = adminService.registerAdmin(account,password);
			if(result <= 0)
				return Msg.fail(5,"用户账号注册失败！");
			else
				return Msg.success(6, "注册成功！");
		}
			
	}
}
