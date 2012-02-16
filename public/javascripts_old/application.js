$(function(){
	
	$("#page th a").live("click",function(){
		$.getScript(this.href);
		return false;
	});
});
