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
<script type="text/javascript" src="../jedate/jedate.js"></script>
<style>
.datainp{ width:200px; height:30px; border:1px #ccc solid;}
.datep{ margin-bottom:40px;}
</style>
</head>
<body>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-search"></span> 查看GPS</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="/joyBike1.0/heartbeat/getGPS">    
      <div class="form-group">
        <div class="label">
          <label>车辆编码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="vehicleId" data-validate="required:请输入车辆编码"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>开始时间：</label>
        </div>
        <div class="field">
		  <input class="input w50" id="dateinfo" type="text" name="beginAt" placeholder="请选择" readonly>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>结束时间：</label>
        </div>
        <div class="field">
          <input type="text" id="dateinfo1"  class="input w50" name="endAt" placeholder="请选择" readonly/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<script type="text/javascript">
    jeDate({
		dateCell:"#dateinfo",
		format:"YYYY年MM月DD日 hh:mm:ss",
		isinitVal:true,
		isTime:true
	})
    jeDate({
		dateCell:"#dateinfo1",
		format:"YYYY年MM月DD日 hh:mm:ss",
		isinitVal:true,
		isTime:true//, isClear:false,
		//minDate:"2014-09-19 00:00:00",
		//okfun:function(val){alert(val)}
	})
</script>
</body>
</html>