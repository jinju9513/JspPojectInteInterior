/**
 * 상담페이지
 */

$(function() {
			$(window).scroll(
					function() {
						if ($(this).scrollTop() >= Math.ceil($('#start')
								.offset().top)) {
							$(".floating").show();
						} else {
							$(".floating").hide();
						}
					});
		});

		document.getElementById("modern_pac").style.display = 'none';

		function changeType() {
			console.log(document.querySelector('html').scrollTop);
			target = document.getElementsByName("roomType");
			for (var i = 0; i < target.length; i++) {
				if (target[0].checked) {
					document.getElementById("char_pac").style.display = 'block';
					document.getElementById("modern_pac").style.display = 'none';
					$("input:radio[id='disney']").prop("checked", true);
				} else {
					document.getElementById("char_pac").style.display = 'none';
					document.getElementById("modern_pac").style.display = 'block';
					$("input:radio[id='white']").prop("checked", true);
				}

			}
		}

		function formSubmit() {
			var form = document.consultForm;

			if (!form.roomType.value) {
				alert("패키지를 선택해주세요.");
				return;
			}

			if (!form.square.value) {
				alert("평수를 입력해주세요.")
				$("input[name=square]").focus();
				return;
			}

			form.submit();
		}
		
		/*$(document).ready(function(){
	          $(document).bind('keydown',function(e){
	               if (e.keyCode == 32 || 
	            		   e.keyCode == 21 || 
	            		   e.keyCode == 25 ||
	            		   (e.keyCode > 64 && e.keyCode < 91) ||
	            		   e.keyCode == 184 ||
	            		   e.keyCode == 189 ||
	            		   e.keyCode == 192) {
	                    e.preventDefault();
	                    e.returnValue = false;
	               }
	          });
	     });*/
		
		var total_min = document.getElementById('min_price');
	var total_max = document.getElementById('max_price');
	var room = document.getElementsByName("roomCnt");
	var min = 0
	var max = 0

	$(document).on('keydown', function() {
	var square = document.getElementById('cns_square').value;
		if(square == 0){
			min = 0;
			max = 0;
			room[0].checked = true;
		}else if(0 < square && square <= 15){
			min = 200;
			max = 300;
			room[0].checked = true;
		}else if(15 < square && square <= 20){
			min = 250;
			max = 375;
			room[0].checked = true;
		}else if(20 < square && square <= 25){
			min = 320;
			max = 454;
			room[0].checked = true;
		}else if(25 < square && square <= 30){
			min = 400;
			max = 567;
			room[0].checked = true;
		}else if(30 < square && square <= 35){
			min = 515;
			max = 662;
			room[0].checked = true;
		}else if(35 < square && square <= 40){
			min = 595;
			max = 792;
			room[0].checked = true;
		}else if(40 < square && square <= 45){
			min = 673;
			max = 887;
			room[0].checked = true;
		}else if(45 < square && square <= 50){
			min = 778;
			max = 958;
			room[0].checked = true;
		}else if(50 < square && square <= 55){
			min = 891;
			max = 1104;
			room[0].checked = true;
		}else if(55 < square && square <= 60){
			min = 995;
			max = 1222;
			room[0].checked = true;
		}else if(60 < square){
			min = 1102;
			max = 1376;
			room[0].checked = true;
		}
		
	
		total_min.innerHTML = min;
		total_max.innerHTML = max;
	});
		
	function roomPrice(){
		if(document.getElementById('cns_square').value != 0){
			if(room[0].checked){
				total_min.innerHTML = min;
				total_max.innerHTML = max;
			}else if(room[1].checked){
				total_min.innerHTML = min + 150;
				total_max.innerHTML = max + 150;
			}else if(room[2].checked){
				total_min.innerHTML = min + 300;
				total_max.innerHTML = max + 300;
			}else if(room[3].checked){
				total_min.innerHTML = min + 450;
				total_max.innerHTML = max + 450;
			}
		}
	};