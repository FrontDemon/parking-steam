package com.smdm.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class Comment {
    private Integer id;

    private String comment;

    private Date comTime;

    private Integer userId;

    private String replication;

    private Date replyTime;

    private Integer adminId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public Date getComTime() {
        return comTime;
    }

    public void setComTime(Date comTime) {
        this.comTime = comTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getReplication() {
        return replication;
    }

    public void setReplication(String replication) {
        this.replication = replication == null ? null : replication.trim();
    }

    public Date getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(Date replyTime) {
        this.replyTime = replyTime;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }
    
    /**
     * 格式化comTime
     * @author manRED
     * @return
     */
    @JsonIgnore
    public String getStringDate() {
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    	 return formatter.format(comTime);
    }
    
    /**
     * 格式化replyTime
     * @author manRED
     * @return
     */
    @JsonIgnore
    public String getStringReplyTime() {
    	if(replyTime!=null) {
    		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
       	 return formatter.format(replyTime);
    	}
    	return null;
    }
    
}