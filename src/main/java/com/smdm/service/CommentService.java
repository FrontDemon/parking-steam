package com.smdm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smdm.bean.Comment;
import com.smdm.bean.CommentExample;
import com.smdm.bean.CommentExample.Criteria;
import com.smdm.dao.CommentMapper;

/**
 * 留言
 * @author manRED
 *
 */
@Service
public class CommentService {
	@Autowired
	CommentMapper commentMapper;
	
	/**
	 * 查询用户留言列表
	 * @param userId
	 * @return
	 */
	public List<Comment> getCommentList(int userId){
		CommentExample example=new CommentExample();
		Criteria criteria=example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		return commentMapper.selectByExample(example);
	}
	
	/**
	 * 添加一条留言
	 * @param comment
	 * @return
	 */
	public int insertComment(Comment comment) {
		return commentMapper.insert(comment);
	}
	
	/**
	 * 删除一条留言
	 * @param id
	 * @return
	 */
	public int deleteComment(int id) {
		return commentMapper.deleteByPrimaryKey(id);
	}
	
	
}
