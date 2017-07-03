$(function() {
	//获取class为userinfo的元素
	$(".userinfo").dblclick(function() {
		var td = $(this);
		var txt = td.text();
		var input = $("<input type='text' value='" + txt + "'/>");
		td.html(input);
		input.click(function() { return false; });//获取焦点
		input.trigger("focus");//文本框失去焦点后提交内容，重新变为文本
		input.blur(function() {
		var newtxt = $(this).val();//判断文本有没有修改
			if (newtxt != txt) {
				td.html(newtxt);
				var id = document.getElementById("id").innerText;
				var nickname = document.getElementById("nickname").innerText;
				var email = document.getElementById("email").innerText;
				var area = document.getElementById("area").innerText;
				var sex = document.getElementById("sex").innerText;
				var birthday = document.getElementById("birthday").innerText;
				console.log(nickname, email, area, sex, birthday);
				
				$.ajax({
					url : 'updateUserInfo',
					processData : true,
					dataType : "text",
					data : {
						id : id,
						nickname : nickname,
						email : email,
						area : area,
						sex : sex,
						birthday : birthday
					},
					success : function(data){
						console.log(id);
						alert("Modify Successfully!\nP.S. no change if format error")
						callback
					}
				});
			}
			else {
				td.html(newtxt);
			}
		});
	});
});


