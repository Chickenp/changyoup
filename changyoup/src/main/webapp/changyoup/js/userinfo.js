$(function() {

	$("#save").click(function(e) {
		var nickname = $("input[name='nickname']").val();
		var email = $("input[name='email']").val();
		var area = $("input[name='area']").val();
		var sex = $("input[name='sex']").val();
		var birthday = $("input[name='birthday']").val();
		console.log(nickname, email, area, sex, birthday);

		var dataset = e.currentTarget.dataset;
		var id = dataset.id;

		if (id != "") { // Edit
			jQuery.ajax({
				url : 'updateAccount',
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
				success : function(data) {
					console.log(id);
					bootbox.alert({
						message : 'Modify Successfully! '
							+ 'PS: No change if foreign key does not exist!',
						callback : function() {
							location.reload();
						}
					});
				}
			});
		}
		$('#modal').modal('hide');
	});

	$(".edit").click(function(e) {
		$('#modalTitle').html("Edit");
		var dataset = e.currentTarget.dataset;
		var id = dataset.id;
		console.log(id);

		$("input[name='nickname']").val(dataset.nickname);
		$("input[name='email']").val(dataset.email);
		$("input[name='area']").val(dataset.area);
		$("input[name='sex']").val(dataset.sex);
		$("input[name='birthday']").val(dataset.birthday);

		$("#save").attr("data-id", dataset.id);
		$('#modal').modal('show');
	});

});
