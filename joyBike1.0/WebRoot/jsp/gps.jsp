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
  <div class="panel-head"><strong class="icon-reorder"> GPS详情</strong></div>
  <c:choose>
  	<c:when test="${empty gps }"><h1 style="text-align:center;"><strong>暂无数据，请重新输入条件进行查找！</strong></h1></c:when> 
  	<c:otherwise> 
	  <table class="table table-hover text-center">
	    <tr>
		  <th width="10%">车辆ID</th>
	      <th width="10%">车锁ID</th>
	      <th width="10%">速度</th>
	      <th width="10%">纬度</th>
	      <th width="10%">经度</th>
	      <th width="10%">车锁状态</th>
	      <th width="10%">电池状态</th>
	      <th width="10%">订单编码</th>
	      <th width="10%">创建时间</th>
	    </tr>
	    <c:forEach items="${gps }" var="vehicleHeartbeat" >
			<tr>	
		   		<td>${vehicleId }</td>
		   		<td>${vehicleHeartbeat.lockId }</td>
		   		<td>${vehicleHeartbeat.speed }</td>
		   		<td>${vehicleHeartbeat.dimension }</td>
		   		<td>${vehicleHeartbeat.longitude }</td>
		   		<c:choose>
		   			<c:when test="${vehicleHeartbeat.lockStatus==0 }">
		   				<td>锁定</td>
		   			</c:when>
		   			<c:otherwise>
		   				<td>开启</td>
		   			</c:otherwise>
		   		</c:choose>
		   		<c:choose>
		   			<c:when test="${vehicleHeartbeat.batteryStatus==0 }">
		   				<td>充电</td>
		   			</c:when>
		   			<c:otherwise>
		   				<td>放电</td>
		   			</c:otherwise>
		   		</c:choose>
		   		<td>${vehicleHeartbeat.orderCode }</td>
		   		<td>
		   			<jsp:useBean id="createAt" class="java.util.Date" scope="page"></jsp:useBean>
					<jsp:setProperty property="time" name="createAt" value="${vehicleHeartbeat.createAt*1000 }"/>
					<fmt:formatDate value="${createAt}" pattern="yyyy-MM-dd HH:mm:ss" />
		   		</td>
		   	 </tr>
		  </c:forEach>
		</table>
	  </c:otherwise>
   </c:choose>
</div>
</body>
</html>