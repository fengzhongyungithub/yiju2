/**
 * 注册页面
 */
$(document).ready(function () {
 		$("#btn").click(function(){
 			var rad=$('input:radio:checked').val();
 			if (rad==null) {
 				 jQuery.alertWindow("温馨提示","请勾选用户协议选项");
			}else{
				
			}
 		});
 		
 	});