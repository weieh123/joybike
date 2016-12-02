$(function(){
	var mark = $(".panel").height()>=$(window).height();
	ini();
	change();
	$(window).resize(function(){
		change();
		checka();
	})
	function change(){
		if(mark){
			$(".panel").css("height",$(window).height());
		}
	}
	function ini(){
		var container = $(".panel");
		var tb1 = $(".panel").children("div").clone(true);
		var tb2 = $(".panel").children("table").clone(true);
		tb2.find("tr").eq(0).nextAll().remove();
		var bak = $("<div id='hea'></div>"); 
		container.append(bak);    
		bak.append(tb1);		
		bak.append(tb2);
		checka();
		bak.css("position","absolute");      
		bak.css("display","block");      
		bak.css("top","0px");  
		bak.css("width","100%"); 
		bak.css("background-color","white");   
		container.scroll(function(){   
			bak.css("top",this.scrollTop+"px");  
		})
	}
	function checka(){
		var tdm = $("table tr").eq(0).children("th").length;
		$("#hea table tr").eq(0).children("th").css("height",$("table tr").eq(0).children("th").height())
		for(var i=0;i<tdm;i++){
			$("#hea table tr").eq(0).children("th").eq(i).css("width",$("table tr").eq(0).children("th").eq(i).outerWidth());
		}
	}
})