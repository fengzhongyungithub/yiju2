$(function(){
	layui.use('form', function() {
		var form = layui.form;
		//监听提交
		form.on('submit(formDemo)', function(data) {
			layer.msg(JSON.stringify(data.field));
			return false;
		});
	});
	
	layui.use('laydate', function() {
		var laydate = layui.laydate;
	
		//执行一个laydate实例
		laydate.render({
			elem: '#test1', //指定元素
			max: Date(),
		});
	});
	
	//注意进度条依赖 element 模块，否则无法进行正常渲染和功能性操作
	layui.use('element', function() {
		var element = layui.element;
	});
	
	
	
	$(function(){
		var regexImageFiler;
		regexImageFiler = /^(?:image\/bmp|image\/png|image\/jpeg|image\/jpg|\/gif)$/i; //正则表达式
		/* -----------------主页展示图片------------------------ */
		var imgReaderl = new FileReader();
		imgReaderl.onload = function(evt) {
			$("#MYimg").attr("src", evt.target.result);
			$("#MYimg").attr("jqimg", evt.target.result);
		}
		
		$("#MYFile").change(function() {
			var imgfFile = $("#MYFile").prop("files")[0];
			if (!regexImageFiler.test(imgfFile.type)) {
				alert("选择有效图片");
			}
			imgReaderl.readAsDataURL(imgfFile);
			//方法会读取指定的 Blob 或 File 对象。读取操作完成的时候，readyState 会变成已完成DONE，
			//并触发 loadend 事件，同时 result 属性将包含一个data:URL格式的字符串（base64编码）以表示所读取文件的内容。
		})
		
		/* -----------------主页展示其他图片------------------------ */
		/* -----------------房产证------------------------ */
		var imgReaderl_proprietary = new FileReader();
		imgReaderl_proprietary.onload = function(evt) {
			$("#Myhouse_proprietary").attr("src", evt.target.result);
			$("#Myhouse_proprietary").attr("jqimg", evt.target.result);
		}
		
		$("#Myhouse_proprietary_File").change(function() {
			var imgfFile__proprietary_File = $("#Myhouse_proprietary_File").prop("files")[0];
			if (!regexImageFiler.test(imgfFile__proprietary_File.type)) {
				alert("选择有效图片");
			}
			imgReaderl_proprietary.readAsDataURL(imgfFile__proprietary_File);
			//方法会读取指定的 Blob 或 File 对象。读取操作完成的时候，readyState 会变成已完成DONE，
			//并触发 loadend 事件，同时 result 属性将包含一个data:URL格式的字符串（base64编码）以表示所读取文件的内容。
		})
		
		/* 房屋首页默认图片展示 */
		/* 图片放大初始化 */
		$(".jqzooms").jqueryzoom({
		    xzoom: 650, //zooming div default width(default width value is 200)
		    yzoom: 350, //zooming div default width(default height value is 200)
		    offset: 10, //zooming div default offset(default offset value is 10)
		    position: "right" //zooming div position(default position value is "right")
		});
		/* 合同图片放大初始化 */
		$(".jqzoom").jqueryzoom({
		    xzoom: 350, //zooming div default width(default width value is 200)
		    yzoom: 550, //zooming div default width(default height value is 200)
		    offset: 10, //zooming div default offset(default offset value is 10)
		    position: "right" //zooming div position(default position value is "right")
		});
		/* zoomType，默认值：’standard’，另一个值是’reverse’，是否将原图用半透明图层遮盖。
		zoomWidth，默认值：200，放大窗口的宽度。
		zoomHeight，默认值：200，放大窗口的高度。
		xOffset，默认值：10，放大窗口相对于原图的x轴偏移值，可以为负。
		yOffset，默认值：0，放大窗口相对于原图的y轴偏移值，可以为负。
		position，默认值：’right’，放大窗口的位置，值还可以是:’right’ ,’left’ ,’top’ ,’bottom’。
		lens，默认值：true，若为false，则不在原图上显示镜头。
		imageOpacity，默认值：0.2，当zoomType的值为’reverse’时，这个参数用于指定遮罩的透明度。
		title，默认值：true，在放大窗口中显示标题，值可以为a标记的title值，若无，则为原图的title值。
		showEffect，默认值：’show’，显示放大窗口时的效果，值可以为: ‘show’ ,’fadein’。
		hideEffect，默认值：’hide’，隐藏放大窗口时的效果: ‘hide’ ,’fadeout’。
		fadeinSpeed，默认值：’fast’，放大窗口的渐显速度(选项: ‘fast’,'slow’,'medium’)。
		fadeoutSpeed，默认值：’slow’，放大窗口的渐隐速度(选项: ‘fast’,'slow’,'medium’)。
		showPreload，默认值：true，是否显示加载提示Loading zoom(选项: ‘true’,'false’)。
		preloadText，默认值：’Loading zoom’，自定义加载提示文本。 */
	})
})
	
	/* -------------------点击图片删除图片------------ */
	
	function img_Esc(a){
		$(a).next().attr("src","img/img_add.png");
	}
	
	/* -------------------点击图片删除图片完------------ */			
	/* -------------------点击图片添加图片------------ */
	function imgwidth_click(a){
		$(a).next().click();
	}
	
	var filettihs;
	var imgReaderls = new FileReader();
	imgReaderls.onload = function(evt) {
		$(filettihs).attr("src",evt.target.result);
	 }
	$(".upload_document").change(function(){
		file_img(this)
	});
	
	function file_img(e){
		var name = $(e).prop("files")[0];
		filettihs =$(e).prev();
		imgReaderls.readAsDataURL(name);
	}
	/* -------------------点击图片添加图片完------------ */
		/* -------------------验证------------ */
			/* -------------------验证------------ */