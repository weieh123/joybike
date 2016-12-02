<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<title></title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
*{ margin:0px; padding:0px;}
.error-container{ background:#fff; border:1px solid #0ae;  text-align:center; width:450px; margin:150px auto; font-family:Microsoft Yahei; padding-bottom:30px; border-top-left-radius:5px; border-top-right-radius:5px;  }
.error-container h1{ font-size:16px; padding:12px 0; background:#0ae; color:#fff;} 
.errorcon{ padding:35px 0; text-align:center; color:#0ae; font-size:18px;}
.errorcon i{ display:block; margin:12px auto; font-size:30px; }
.errorcon span{color:red;}
h4{ font-size:14px; color:#666;}
a{color:#0ae;}
</style>
</head>
<body class="no-skin">
<div class="error-container" > 
    <h1> 后台管理系统-信息提示 </h1>   
    <div class="errorcon">     
        <span><i class="icon-frown-o"></i>错误信息：${message }</span>
   </div>
   <h4 class="smaller">页面自动 <a id="href" href="javascript:void(0)">跳转</a> 等待时间： <b id="wait">5</b></h4>
</div>

<script type="text/javascript">
(function(){
$("#href").click(function(){
	location.href = history.go(-1);
})
var i=4;
setInterval(
	function(){			
		$("#wait").text(i);
		if(i>0){
			i--;
		} else {
			location.href = history.go(-1);
		}
	},1000
);
})();
</script>
</body>
</html>