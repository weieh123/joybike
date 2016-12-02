package com.joybike.server.api.service;

import java.util.List;

import com.joybike.server.api.model.Sms;

public interface MessageService {
	//添加
	void insert(Sms message);
	//修改
	void change(Sms message);
	//删除
	void delById(Long id);
	//查所有
	List<Sms> getAll();
	//查一个
	Sms getOne(Long id);
}
