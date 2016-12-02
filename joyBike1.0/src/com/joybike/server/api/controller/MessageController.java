package com.joybike.server.api.controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.joybike.server.api.model.Sms;
import com.joybike.server.api.service.MessageService;
import com.joybike.server.api.util.UnixTimeUtils;

@Controller
@RequestMapping("/message")
public class MessageController {

	@Resource
	private MessageService messageService;
	
	//查所有
	@RequestMapping("getAll")
	public ModelAndView getAll(){
		try {
			List<Sms> messages = messageService.getAll();
			return new ModelAndView("jsp/messages", "messages", messages);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取消息失败！");
		}
	}
	
	//添加
	@RequestMapping("insert")
	public String insert(Sms message){
		try {
			message.setCreateAt(UnixTimeUtils.now());
			messageService.insert(message);
			return "redirect:/message/getAll";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("消息添加失败！");
		}
	}
	
	//进入修改
	@RequestMapping("intoUpdate")
	public ModelAndView intoUpdate(Long id){
		try {
			Sms message = messageService.getOne(id);
			return new ModelAndView("jsp/updateMessage", "message",message);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取消息失败！");
		}
	}
	
	//修改
	@RequestMapping("update")
	public String update(Sms message){
		try {
			messageService.change(message);
			return "redirect:/message/getAll";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("消息修改失败！");
		}
	}
	
	//删除
	@RequestMapping("delete")
	public String delete(Long id){
		try {
			messageService.delById(id);
			return "redirect:/message/getAll";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("消息删除失败！");
		}
	}
}
