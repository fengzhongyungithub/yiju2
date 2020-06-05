<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/5/24
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script src="../js/jquery-3.3.1.js"></script>
<script src="../js/jquery-1.12.4.js"></script>
<script>

   function aaa() {
        alert("a");
        var attachmentUrl="http://localhost:8080";
        var curWwwPath=window.document.location.href;
        var pathName=window.document.location.pathname;
        var pos=curWwwPath.indexOf(pathName);
        var localhostPath=curWwwPath.substring(0,pos);
        alert(attachmentUrl);

        window.open(localhostPath+"/pdf/web/viewer.html");
       /*window.open(localhostPath+"/pdf/web/viewer.html?file=/preview");
*/
    };
</script>
<a href="/preview">合同</a>
<h1 onclick="aaa()" >在线阅读PDF文件</h1>
</body>
</html>
