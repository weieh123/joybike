package com.joybike.server.api.model;

import java.io.Serializable;

public class Sms implements Serializable {

	/**
	 * 主键
	 */
	private Long id;
	
	/**
	 * 标题
	 */
	private String title;
	
	/**
	 * 内容
	 */
	private String content;
	
	/**
	 * 创建人
	 */
	private Long creator;
	
	/**
	 * 创建时间
	 */
	private Integer createAt;
	
	/**
	 * 图片URL
	 */
	private String imagUrl;
	
	/**
	 * 详情URL
	 */
	private String detailURL;
	
	/**
	 * 推送目标
	 */
	private String target;
	
	public Sms() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getCreator() {
		return creator;
	}

	public void setCreator(Long creator) {
		this.creator = creator;
	}

	public Integer getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Integer createAt) {
		this.createAt = createAt;
	}

	public String getImagUrl() {
		return imagUrl;
	}

	public void setImagUrl(String imagUrl) {
		this.imagUrl = imagUrl;
	}

	public String getDetailURL() {
		return detailURL;
	}

	public void setDetailURL(String detailURL) {
		this.detailURL = detailURL;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	@Override
	public String toString() {
		return "Sms [id=" + id + ", title=" + title + ", content=" + content + ", creator=" + creator + ", createAt="
				+ createAt + ", imagUrl=" + imagUrl + ", detailURL=" + detailURL + ", target=" + target + "]";
	}


}
