
<%@ page language="java" import="cn.jbit.javabean.Topic,java.util.List" pageEncoding="utf-8"%>
<%@ page import="cn.jbit.service.TopicService" %>
<%@ page import="cn.jbit.service.Impl.TopicServiceImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<title>编辑主题--管理后台</title>
   <script type="text/javascript">
		function check(){
			var tname = document.getElementById("tname");
	
			if(tname.value == ""){
				alert("请输入主题名称！！");
				tname.focus();
				return false;
			}		
			return true;
		}
	</script>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <div id="main">
      <div>
	    <iframe src="console_element/top.html" scrolling="no" frameborder="0" width="947px" height="180px"></iframe>
	  </div> 
      <div id="opt_list">
      	<iframe src="console_element/left.html" scrolling="no" frameborder="0" width="130px"></iframe>
      </div> 
	  <div id="opt_area">
	  <%
		  TopicService tc = new TopicServiceImpl();
		  List<Topic> list = tc.findAllTopics();
			for(Topic li :list){
		%>
			<tr>
			<td><%=li.getName()%></td>
			<td><a href="doDel.jsp?id=<%=li.getId()%>">删除</a></td><br/>
			</tr>
		<%	
			}		
		%>	  
		</div>
	  <iframe src="console_element/bottom.html" scrolling="no" frameborder="0" width="947px" height="190px"></iframe>
  </div>
</body>
</html>	