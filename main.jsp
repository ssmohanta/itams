<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html onload="javaScript:RefreshPage(120000)">
<head>
	<title><?php echo $pageTitle; ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<script src="/ec/content/js/jquery-1.10.2.js"></script>
	<link rel="stylesheet" href="/ec/content/mediascan/styles/kendo.common.min.css" />
	<link rel="stylesheet" href="/ec/content/mediascan/styles/kendo.default.min.css" />
	<link rel="stylesheet" href="/ec/content/mediascan/styles/kendo.default.mobile.min.css" />
	<script src="/ec/content/mediascan/js/kendo.all.min.js"></script>
	<link href="/itcms/include/admin.css" rel="stylesheet" type="text/css">
	<link href="/itcms/include/menu.css" rel="stylesheet" type="text/css">
	<link href="/itcms/include/main.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" type="text/javascript" src="/itcms/library/common.js"></script>
	<script language="JavaScript" type="text/javascript" src="/itcms/library/complains.js"></script>
</head>
<body>
	<c:if test="${param.logOut == 'Y'}">
		<c:remove var="user_id" scope="session" />
		<c:remove var="user_name" scope="session" />
		<c:remove var="user_type" scope="session" />		
	</c:if>
	<c:choose>
	<c:when test="${empty sessionScope.user_id}">
		<c:redirect url="login.jsp"/>
	</c:when>
	<c:otherwise>	
		<br/><br/>
		<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
			<tr>
				<td colspan="2"><img src="/itcms/images/complains.jpg" width="1200" height="120"></td>
			</tr>
			<tr>
				<td width="18%" valign="top" class="navArea"><p>&nbsp;</p>
					<%@include file="include/menu.jsp" %>
					<?php include("menu.php"); ?>    
				</td>
				<td width="82%" valign="top" class="contentArea">
					<table width="100%" border="0" cellspacing="0" cellpadding="20">
						<tr>
							<td>
								<?php
									require_once $content;	 
								?>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<p>&nbsp;</p>
		<p>&copy; CS & IS Department</a></p>
	</c:otherwise>
	</c:choose>
</body>
</html>