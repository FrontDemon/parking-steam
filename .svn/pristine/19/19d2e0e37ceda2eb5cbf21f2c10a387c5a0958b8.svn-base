package com.smdm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.smdm.bean.Lot;
import com.smdm.service.LotService;

@Controller
public class LotController {
@Autowired
LotService lotService; 
	
	/*
	 * @author Zm
	 * 根据车位id获取车位详情信息
	 */
	@RequestMapping(value = "/parkDetail",method = RequestMethod.GET)
	public ModelAndView toParkDetail(@RequestParam(value="lotId",defaultValue="")int lotId) {
		ModelAndView mView = new ModelAndView();
		
		List<Lot> lotList = lotService.getLotById(lotId);
		mView.addObject("lotList", lotList.get(0));
		mView.addObject("lotId", lotId);
		
		mView.setViewName("user/parkingDetail");
		return mView;
	}
	
	/*
	 * @author Zm
	 * 根据多选框的值筛选不同的车位状态，返回JSON数组
	 */
	/*
	 * 2018.8.4
	 * 马伟涛
	 * 该控制方法返回ModelAndView有错，我添加ResponseBody注解并返回List<Lot>数据
	 */
	@RequestMapping(value = "/carClassfiy", method = RequestMethod.GET)
	@ResponseBody
	public List<Lot> toCarClassfiy(@RequestParam(value="selectId")int selectId) {	
		List<Lot> lotList = lotService.getLotBySelectId(selectId);
		return lotList;
	}
}
