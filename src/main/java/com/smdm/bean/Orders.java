package com.smdm.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.smdm.statusenum.OrderEnum;
import com.smdm.utils.EnumUtil;

public class Orders {
    private Integer id;

    private Integer userId;

    private Integer lotId;
    
    private Date orderTime;

    private Double price;

    private Double total;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getLotId() {
        return lotId;
    }

    public void setLotId(Integer lotId) {
        this.lotId = lotId;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
    
    /**
     * 格式化orderTime
     * @author manRED
     * @return
     */
    @JsonIgnore
    public String getStringDate() {
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    	 return formatter.format(orderTime);
    }
    
    /**
     * 根据status生成包含状态信息的enum对象
     * @return
     * @author manRED
     */
    @JsonIgnore
    public OrderEnum getOrderEnum() {
    	return EnumUtil.getByCode(status, OrderEnum.class);
    }
}