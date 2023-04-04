function close_window(){
	close();
}

function input_adrs(){
	var adr1 = document.querySelectorAll(".textfield1");

	var checkadr1 = adr1.item(0).value;
	var checkadr2 = adr1.item(1).value;


	if(checkadr1 == "" || checkadr2 == ""){
		alert("주소를 입력해주세요");
	}else{
		alert("DB로 넘기는 기능 추가예정");
	}
}
