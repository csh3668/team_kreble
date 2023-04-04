function aaa(){
	
	var cata = document.getElementById("search1").value;
	var tr = document.getElementById("search2").value;
	var title = document.getElementById("search3").value;
	
	if(cata == "" && tr == "" && title == ""){
		location.href="shop_reform_board.jsp";
	}
	
	location.href="shop_reform_search.jsp?re_cata="+cata+"&re_tr="+tr+"&re_title="+title;


}