<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp" %>
<html class="ea-execuated" lang="zh-cn">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>商务综合管理平台</title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/skin/default/css/login.css" media="all" />
	<script src="${ctx}/components/pngfix/DD_belatedPNG.js"></script>
	<script> DD_belatedPNG.fix('*'); </script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/loginCss/style.css" />
<body>
<form id="login_main" method="post" target="_parent">
	<div id="png">
	<div class="box">
			<div class="inputstyle">
				<div class="inputlable">用户名：
					<input type="text" value="${userName}" name="username" id="userName" onFocus="this.select();" title="请您输入用户名"/>
					<div id="ts" style="z-index:1;">
					</div>
				</div>

			    <div class="inputlable">密　码：
					<input type="password" value="${password}" name="password" id="password" onfocus="$('#ts').css('display','none');this.select();"
						onKeyDown="javascript:if(event.keyCode==13){ formSubmit('${ctx}/login.action','_self'); }" title="请您输入密码"/>
				</div>
			</div>
			<div class="btnstyle">
				<input  class="loginImgOut" value="" type="button" onclick="formSubmit('${ctx}/login.action','_self');"
				  onmouseover="this.className='loginImgOver'" 
				  onmouseout="this.className='loginImgOut'"
				/>
				<input class="resetImgOut" value="" type="button"   
				  onmouseover="this.className='resetImgOver'" 
				  onmouseout="this.className='resetImgOut'"
				/>
			</div>
		  	<div class="msgtip">
				<c:if test="${!empty errorInfo}">
					${errorInfo}
				</c:if>
			</div>
	</div>
</div>
</form>

<script type="text/JavaScript">
	document.getElementById('login_main').username.focus();
</script>
</body>
</html>