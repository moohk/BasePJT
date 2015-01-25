<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="/WEB-INF/tld/sf.tld" %>

<script>
$(document).ready(function() {
	$(".main_menu").on("click", ".main_menu_item", function(e) {
		var url = $(e.target).find("a").attr("href");
		
		if($(e.target).text() == "Resource") {
			$(location).attr("target", "Resource");
			$(location).attr("href", url);
			//window.open(url, "_blank");
		} else {
			$(location).attr("href", url);
		}
	});
});
</script>
<div class="header_main">
	<div class="main_left">
		<div class="main_logo"></div>
	</div>
	<div class="main_right">
		<div class="main_menu">
			<div class="main_menu_item"><a href="${pageContext.request.contextPath}/indigo/management.mesim">Management</a></div>
			<div class="main_menu_item"><a href="${pageContext.request.contextPath}/indigo/monitor.mesim">Monitor</a></div>
			<div class="main_menu_item"><a href="${pageContext.request.contextPath}/indigo/modeling.mesim">Modeling</a></div>
			<div class="main_menu_item"><a href="${pageContext.request.contextPath}/indigo/resource.mesim" target="resourcePopup">Resource</a></div>
		</div>
		<div id="btnLogout" class="logout" title="Logout"></div>
	</div>
</div>
