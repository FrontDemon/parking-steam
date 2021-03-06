package com.smdm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.smdm.bean.Admin;
import com.smdm.bean.Msg;
import com.smdm.bean.User;
import com.smdm.service.AdminService;
import com.smdm.service.UserService;

@Controller
public class LoginController {
	@Autowired
	UserService userService;
	@Autowired
	AdminService adminService;

	/*
	 * 用户登录验证
	 */
	@RequestMapping(value = "/checkUserLogin", method = RequestMethod.POST)
	@ResponseBody
	public Msg checkUserLogin(@RequestParam(value="account",defaultValue="")String account, 
			@RequestParam(value="password",required=false)String password,HttpSession session) {
		
		
		if(account.isEmpty())
			return Msg.fail(1,"用户账号为空！");
		
		//判断账号存在与否
		boolean test1 = userService.accountIsExist(account);
		if(test1==false)
			return Msg.fail(2,"用户账号不存在！");
		else if(password.isEmpty())
			return Msg.success(4,"用户账号存在，但未输入密码！");
			
		//判断账号密码匹配与否
		List<User> test2 = userService.checkAccountPSW(account, password);
		int status = test2.get(0).getStatus();
		if(status == 1){
			return Msg.fail(6,"用户被限制登录！");
		}
		else if(test2 != null && test2.size()>0)	{	
			session.setAttribute("userObj", test2.get(0));
			return Msg.success(5,"登录成功！").add("list", test2);
		}
		else 
			return Msg.fail(3,"密码错误！");
			
	}
	
	
	/*
	 * 管理员登录验证
	 */
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	@ResponseBody
	public Msg adminLogin(@RequestParam(value="account",defaultValue="")String account, 
			@RequestParam(value="password",required=false)String password) {
		
		if(account.isEmpty())
			return Msg.fail(1,"管理员账号为空！");
		
		//判断账号存在与否
		boolean test1 = adminService.accountIsExist(account);
		if(test1==false)
			return Msg.fail(2,"管理员账号不存在！");
		else if(password.isEmpty())
			return Msg.success(4,"管理员账号存在，但未输入密码！");
			
		//判断账号密码匹配与否
		List<Admin> test2 = adminService.checkAccountPSW(account, password);
		if(test2 != null && test2.size()>0)
			return Msg.success(5,"登录成功！").add("list", test2);
		else 
			return Msg.fail(3,"密码错误！");
			
	}
	
	/*
	 * 注销session
	 */
	@RequestMapping(value = "/logout",method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		ModelAndView mView = new ModelAndView();
		mView.setViewName("user/main");
		return mView;
	}
	
	/*
	 * 重定向UserLogin.jsp
	 */
	@RequestMapping(value ="/toUserLogin")
	public ModelAndView toUserLogin() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("user/userLogin");
		return mView;
	}
	
	/*
	 * 重定向AdminLogin.jsp
	 */
	@RequestMapping(value ="/toAdminLogin")
	public ModelAndView toAdminLogin() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("admin/adminLogin");
		return mView;
	}
	
	/*
	 * 跳转到注册页面signUp.jsp
	 */
	@RequestMapping(value ="/toSignUp")
	public ModelAndView toSignUp() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("user/signUp");
		return mView;
	}
	
}
