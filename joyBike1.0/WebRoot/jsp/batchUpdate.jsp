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
    <title>批量修改</title>  
    <link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin.css">
    <script src="../js/jquery.js"></script>
    <script src="../js/pintuer.js"></script>  
</head>
<body>
<form id="form" method="post" action="/joyBike1.0/vehicle/batchUpdate">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-pencil-square-o"> 批量修改</strong></div>
    <table class="table table-hover text-center">
      <tr>
        <th width="120">车辆ID</th>
        <th>隶属代理商ID</th>
        <th>启用状态</th>
      </tr>      
        <c:forEach items="${vehicles }" var="vehicle" varStatus="i">
		<tr>
			<td style="text-align:left; padding-left:20px;"><input type="hidden" name="vehicles[${i.index }].id" value="${vehicle.id }"/><input type="checkbox" name="id[]"/>${vehicle.vehicleId }</td>
	   		<td><input type="text" name="vehicles[${i.index }].agentId" value="${vehicle.agentId }" style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;"/></td>
	   		<td><select name="vehicles[${i.index }].status" class="input" style="width:60px; line-height:17px;display:inline-block">
	           	<option value="0" <c:if test="${vehicle.status==0 }">selected="selected"</c:if>>启用</option>
		   		<option value="1" <c:if test="${vehicle.status==1 }">selected="selected"</c:if>>禁用</option>
		   		<option value="2" <c:if test="${vehicle.status==2 }">selected="selected"</c:if>>故障</option>
	          </select></td>
	   	</tr>
		</c:forEach>
		<tr>
        <td colspan="7" style="text-align:left;padding-left:20px;">
			<a href="javascript:void(0)" class="button border-blue" style="padding:5px 15px;" id="checkall"> 全选</a> 
			<a href="javascript:void(0)" class="button border-blue" style="padding:5px 15px;" id="checkother"> 反选</a> 
			<a href="javascript:void(0)" class="button border-blue" style="padding:5px 15px;" id="checknone"> 全不选</a> 
		 &nbsp;&nbsp;&nbsp;启用状态：<select id="sel" style="padding:5px 15px; border:1px solid #ddd;" onchange="changestatus()">
				<option value="1">禁用</option>
				<option value="0">启用</option>
				<option value="2">故障</option>
			</select>
		 &nbsp;&nbsp;&nbsp;隶属代理商ID：<input id="cid" type="text" style="width:50px; text-align:center; border:1px solid #ddd; padding:7px 0;" onblur="changeId()"/>
			<a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-check-square-o" onclick="sub()"> 提交</a>
         </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">
//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
		this.checked = true;
  });
})
//全不选
$("#checknone").click(function(){ 
  $("input[name='id[]']").each(function(){
		this.checked = false;
  });
})
//反选
$("#checkother").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})
function sub(){
	$("#form").submit();
}
function changestatus(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {
		  $(this).parent().next().next().children().children().each(function(){
			  if($(this).attr("value") == $("#sel option:selected").val()){
				  this.selected = true;
			  } else {
				  this.selected = false;
			  }
		  })
		Checkbox=true;	
	  }
	});
	if (!Checkbox){		
		alert("请选择要修改的车辆!");
	} 
}
function changeId(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {
		  $(this).parent().next().children().attr("value",$("#cid").val());
		  Checkbox=true;	
	  }
	});
	if (!Checkbox){		
		alert("请选择要修改的车辆!");
	}
}
</script>
</body>
</html>