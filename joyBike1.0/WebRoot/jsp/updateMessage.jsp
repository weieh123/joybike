<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<script src="../js/jquery.js"></script>
<script src="../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span> 修改消息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="/joyBike1.0/message/update">  
      <input type="hidden" name="id" value="${message.id }"/>
      <div class="form-group">
        <div class="label">
          <label>消息标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="title" value="${message.title }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>消息内容：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input" name="content" style="height:120px;">${message.content }</textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片URL：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${message.imagUrl }" name="imagUrl"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>详情URL：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${message.detailURL }" name="detailURL"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>创建人：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="${message.creator }" name="creator"/>
          <div class="tips"></div>
        </div>
      </div>
      <input type="hidden" name="createAt" value="${message.createAt }"/>
      <div class="form-group">
        <div class="label">
          <label>推送目标：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="target" value="${message.target }"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-reply" type="button" onclick="history.go(-1)"> 返回</button>
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
</html>