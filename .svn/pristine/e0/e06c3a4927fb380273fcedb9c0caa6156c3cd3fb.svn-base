package com.smdm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smdm.bean.Admin;
import com.smdm.bean.AdminExample;
import com.smdm.bean.AdminExample.Criteria;
import com.smdm.dao.AdminMapper;

@Service
public class AdminService {
	@Autowired
	AdminMapper adminMapper;
	
public List<Admin> checkAccountPSW(String account, String password) {
		
		if(account==null || account.isEmpty() || password==null || password.isEmpty())
			return null;
		
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAccountEqualTo(account).andPasswordEqualTo(password);
		List<Admin> result = adminMapper.selectByExample(example);
		
		return result;
		
	}
	
	public boolean accountIsExist(String account) {
		
		if(account==null || account.isEmpty())
			return false;
		
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAccountEqualTo(account);
		List<Admin> result = adminMapper.selectByExample(example);
		
		if(result.size()>0)
			return true;
		else 
			return false;
	}

	public int registerAdmin(String account, String password) {
		if(account==null || account.isEmpty() || password==null || password.isEmpty())
			return -1;
		Admin admin = new Admin();
		admin.setAccount(account);
		admin.setPassword(password);
		int result = adminMapper.insertSelective(admin);
		return result;
	}
	
	/*
	 * 根据公告的发布人id查询管理员姓名
	 * @author Zm
	 */
	public String getAdminName(int adminId) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(adminId);
		List<Admin> list = adminMapper.selectByExample(example);
		String adminName = list.get(0).getName();
		return adminName;
	}
}
