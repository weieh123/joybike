package com.joybike.server.api.dao;

import java.util.List;

import com.joybike.server.api.model.Sms;

public interface SmsDao {

	//添加
	void insert(Sms message);
	//修改
	void update(Sms message);
	//删除
	void delById(Long id);
	//查所有
	List<Sms> selectAll();
	//查一个
	Sms selectOne(Long id);
}
