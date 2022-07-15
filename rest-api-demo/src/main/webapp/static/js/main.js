$(document).ready(function(){
	
	getAllData();
	
});

	function getAllData() {
		$.ajax({
			url: "http://localhost:8080/rest-api-demo/employees",
			type: "GET",
			success: function(response) {
				for (res in response) {
					$("#user-table").append("<tr><td>" + response[res].id + "</td><td>" + response[res].name + "</td><td>" + response[res].address + "</td><td><button type='button' class='btn btn-info mr-2' onclick='editData(" + response[res].id + ")' data-toggle='modal'  data-target='#exampleModal'>Edit</button><button type='button' class='btn btn-danger' id='deleteData' onclick='deleteData(" + response[res].id + ")' >Delete</button></td></tr>")
				}
			},
			failure: function(response) {
				$('#failure').show();
				$("#failure").delay(8000).fadeOut("slow");
			},
			error: function(response) {
				$('#error').show();
				$("#error").delay(8000).fadeOut("slow");
			}
		});
	}


	$("#addData").on("click", function() {
		var id = $('#id').val();
		var name = $('#name').val();
		var address = $('#address').val();
		$.ajax({
			url: "http://localhost:8080/rest-api-demo/employees",
			type: "POST",
			contentType: 'application/json',
			data: JSON.stringify({ "id": id, "name": name, "address": address }),
			success: function(response) {
				$("#user-table").html("");
				getAllData();
				$('#addSuccess').show();
				$("#addSuccess").delay(8000).fadeOut("slow");	
			},
			failure: function(response) {
				$('#failure').show();
				$("#failure").delay(8000).fadeOut("slow");
			},
			error: function(response) {
				$('#error').show();
				$("#error").delay(8000).fadeOut("slow");
			}
		});
	});
	
	
	function editData(id){
		$.ajax({
			url: "http://localhost:8080/rest-api-demo/employees/" + id,
			type: "GET",
			success: function(res) {
				$('#emp_id').val(res.id);
				$('#emp_name').val(res.name);
				$('#emp_address').val(res.address);
			},
			failure: function(res) {
				$('#failure').show();
				$("#failure").delay(8000).fadeOut("slow");
			},
			error: function(res) {
				$('#error').show();
				$("#error").delay(8000).fadeOut("slow");
			}
		});
	}
	
	
	$("#updateData").on("click", function() {
		var id = $('#emp_id').val();
		var name = $('#emp_name').val();
		var address = $('#emp_address').val();
		$.ajax({
			url: "http://localhost:8080/rest-api-demo/employees/" + id,
			type: "PUT",
			contentType: 'application/json',
			data: JSON.stringify({ "id": id, "name": name, "address": address }),
			success: function(response) {
				$('#exampleModal').modal('toggle');
				$("#user-table").html("");
				getAllData();
				$('#updateSuccess').show();
				$("#updateSuccess").delay(8000).fadeOut("slow");
			}
		});
	});

function deleteData(id){
	$.ajax({
			url: "http://localhost:8080/rest-api-demo/employees/" + id,
			type: "DELETE",
			success: function(response, status) {
				$("#user-table").html("");
				getAllData();
				$('#deleteSuccess').show();
		    	$("#deleteSuccess").delay(8000).fadeOut("slow");
			}
		});
}
	

