<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title><tiles:insertAttribute name="title"/></title>

<tiles:insertAttribute name="header"/>

<script>
$(document).ready(function() {
		
	if("${sessionScope.userInfo}" == "") {
		alert("로그인이 필요합니다.");
		changeLoginPage();
	}

	$.appComlib.defaultOptions.contextPath = "${pageContext.request.contextPath}";
	
	$("#btnLogout").click(function() {
		$.ajax({
			url: "${pageContext.request.contextPath}/user/logout.json",
			type: "POST",
			dataType: "json",
			async: false,
			success: function(data) {
				changeLoginPage();
			}
		});
	});
	
});

function changeLoginPage() {
	// POST로 변경할 것
	$(location).attr("href", "${pageContext.request.contextPath}/login.mesim" + "?prevUrl=" + $(location).attr("pathname"));
}
</script>

</head>
<body>

<div id="pagewrap">
	<div id="header" class="menu">
		<tiles:insertAttribute name="menu"/>
	</div>
	
	<div class="menuLine" style="height: 7px; background-color: #f8a04e"></div>
	
	<div id="content" class="content">
		<tiles:insertAttribute name="body"/>
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	
</div>
</body>
</html>