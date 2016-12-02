<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script src="../js/myjquery.js"></script>
<script src="../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 消息列表</strong></div>
  <table class="table table-hover text-center">
    <tr>
      <th width="10%">消息标题</th>
      <th width="10%">消息内容</th>
      <th width="10%">创建人</th>
      <th width="10%">创建时间</th>
      <th width="10%">图片URL</th>
      <th width="10%">详情URL</th>
      <th width="10%">推送目标</th>
      <th width="10%">操作</th>
    </tr>
   
   <c:forEach items="${messages }" var="message" >
		<tr>	
	   		<td>${message.title }</td>
	   		<td>${message.content }</td>
	   		<td>${message.creator }</td>
	   		<td>
	   			<jsp:useBean id="createAt" class="java.util.Date" scope="page"></jsp:useBean>
				<jsp:setProperty property="time" name="createAt" value="${message.createAt*1000 }"/>
				<fmt:formatDate value="${createAt}" pattern="yyyy-MM-dd HH:mm:ss" />
	   		</td>
	   		<td style="table-layout: fixed;WORD-BREAK: break-all; WORD-WRAP: break-word">${message.imagUrl }</td>
	   		<td>${message.detailURL }</td>
	   		<td>${message.target }</td>
	   		<td><div class="button-group">
			    <a class="button border-main" href="intoUpdate?id=${message.id }"><span class="icon-edit"></span> 修改</a>
			    <a class="button border-red" href="javascript:void(0)" onclick="return del(${message.id })"><span class="icon-trash-o"></span> 删除</a>
			    </div></td>
	   	</tr>
	</c:forEach>
  </table>
</div>
<script type="text/javascript">
function del(id){
	if(confirm("您确定要删除吗?")){
		location.href="${pageContext.request.contextPath}/message/delete?id="+id;
	}
}
</script>
</body>
</html>