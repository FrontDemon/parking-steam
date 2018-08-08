package com.smdm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smdm.bean.Announcement;
import com.smdm.bean.AnnouncementExample;
import com.smdm.bean.AnnouncementExample.Criteria;
import com.smdm.dao.AdminMapper;
import com.smdm.dao.AnnouncementMapper;

@Service
public class AnnouncementService {
	@Autowired
	AnnouncementMapper announceMapper;
	
	/*
	 * 查询所有公告信息
	 * @author Zm
	 */
	public List<Announcement> getAnnouncement() {
		return announceMapper.selectByExample(null);	
	}
	
	/*
	 * 根据id查询公告
	 * @author Zm
	 */
	public List<Announcement> getAnnounceById(int titleId){
		AnnouncementExample example = new AnnouncementExample();
		Criteria criteria = example.createCriteria();
		criteria.andIdEqualTo(titleId);
		List<Announcement> result = announceMapper.selectByExample(example);
		return result;
	}
	
	
}
