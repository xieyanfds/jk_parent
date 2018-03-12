<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<title></title>
	<script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
</head>

<body>
<form name="icform" method="post">
	<input type="hidden" name="id" value="${id}"/>

	<input type="hidden" name="amount" value="${amount }"/>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="${ctx }/skin/default/images/icon/server_view.png"/>
   查看附件
  </div> 
  

 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">生产厂家：</td>
	            <td class="tableContent">
	            	<s:select name="factory.id" list="factoryList" 
	            				listKey="id" listValue="factoryName" 
	            				onchange="setFactoryName(this.options[this.selectedIndex].text);"
	            				headerKey="" headerValue="--请选择--" disabled="true"/>
	            	<input type="hidden" id="factoryName" name="factoryName" value=""/>
	            </td>
	            <td class="columnTitle">货号：</td>
	            <td class="tableContentAuto"><input type="text" name="productNo" value="${productNo}" readonly/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">货物照片：</td>
	            <td class="tableContent"><input type="text" name="productImage" value="${productImage}" readonly/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">数量：</td>
	            <td class="tableContent"><input type="text" name="cnumber" value="${cnumber}" readonly/></td>
	            <td class="columnTitle">包装单位：</td>
	            <td class="tableContentAuto">
					<select id="packingUnit" name="packingUnit" disabled>
						<option value="PCS" <c:if test="${packingUnit=='PCS'}">selected</c:if>>只</option>
						<option value="SETS" <c:if test="${packingUnit=='SETS'}">selected</c:if>>套</option>
					</select>
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">单价：</td>
	            <td class="tableContent"><input type="text" name="price" value="${price}" readonly/></td>
	            <td class="columnTitle">排序号：</td>
	            <td class="tableContent"><input type="text" name="orderNo" value="${orderNo}" readonly/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">货物描述：</td>
	            <td class="tableContent"><textarea name="productDesc" style="height:150px;" readonly>${productDesc}</textarea>
	            <td class="columnTitle">要求：</td>
	            <td class="tableContent"><textarea name="productRequest" style="height:150px;" readonly>${productRequest}</textarea>
	        </tr>		
		</table>
	</div>

 
</form>
</body>
</html>
