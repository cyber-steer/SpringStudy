<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function sendData(){
		let xhr = new XMLHttpRequest()
		xhr.onreadystatechange = function(){
			if(this.readyState == 4){
				document.getElementById('myAjax').innerHTML = this.responseText;
			}
		}
		xhr.open("POST", "text.txt",true);
		xhr.send()
	};

</script>
</head>
<body>
	<button value="테스트입니다" onclick="sendData()">테스트입니다</button>
	<div id="myAjax">
	</div>
</body>
</html>