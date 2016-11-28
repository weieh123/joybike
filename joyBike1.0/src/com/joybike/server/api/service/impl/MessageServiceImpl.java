package com.joybike.server.api.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.joybike.server.api.dao.SmsDao;
import com.joybike.server.api.model.Sms;
import com.joybike.server.api.service.MessageService;

@Service("MessageService")
public class MessageServiceImpl implements MessageService {

	@Resource
	private SmsDao messageDao;
	
	@Override
	public void insert(Sms message) {
		// TODO Auto-generated method stub
		messageDao.insert(message);
	}

	@Override
	public void change(Sms message) {
		// TODO Auto-generated method stub
		messageDao.update(message);
	}

	@Override
	public void delById(Long id) {
		// TODO Auto-generated method stub
		messageDao.delById(id);
	}

	@Override
	public List<Sms> getAll() {
		// TODO Auto-generated method stub
		return messageDao.selectAll();
	}

	@Override
	public Sms getOne(Long id) {
		// TODO Auto-generated method stub
		return messageDao.selectOne(id);
	}

}
