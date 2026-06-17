<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
	<c:when test="${sessionScope.user_type == 'customer'}">				
		<div id="ddblueblockmenu">
			<div class="menutitle">Customer Menu</div>
				<ul>
					<li><a href="/itcms/">Welcome,&nbsp;${sessionScope['user_name']}</a></li>
					<li><a href="/itcms/view.php?mod=customer&view=makeComplain">Register Complaint</a></li>
					<li><a href="/itcms/view.php?mod=customer&view=compDetails">View Complaint Details</a></li>
					<li><a href="/itcms/view.php?mod=customer&view=changePassword">Change Password</a></li>
					<li><a href="/itcms/main.jsp?logOut=Y">Logout</a></li>
				</ul>
			<div class="menutitle">&nbsp;</div>	  
		</div>
	</c:when>
	<c:when test="${sessionScope.user_type == 'employee'}">				
		<div id="ddblueblockmenu">
			<div class="menutitle">Service Engineers Menu</div>
				<ul>
					<li><a href="/itcms">Welcome,&nbsp;${sessionScope['user_name']}</a></li>
					<li><a href="/itcms/view.php?mod=employee&view=viewComplain">Open Complaints</a></li>
					<li><a href="/itcms/view.php?mod=employee&view=viewComplainClose">Closed Complaints</a></li>
					<li><a href="/itcms/view.php?mod=employee&view=changePassword">Change Password</a></li>
					<li><a href="/itcms/main.jsp?logOut=Y">Logout</a></li>
				</ul>
			<div class="menutitle">&nbsp;</div>	  
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
			 
	</c:when>
	<c:when test="${sessionScope.user_type == 'admin'}">				
		<div id="ddblueblockmenu">
			<div class="menutitle">Admin Menu</div>
				<ul>
					<li><a href="/itcms">Welcome,&nbsp;${sessionScope['user_name']}</a></li>
					<li><a href="/itcms/view.php?mod=admin&view=vDetails">View Complaints</a></li>
					<li><a href="/itcms/view.php?mod=admin&view=compCloseDetails">View/Close Complaints</a></li>
					<li><a href="/itcms/view.php?mod=admin&view=enggDetails">Service Engineer Details</a></li>
					<li><a href="/itcms/view.php?mod=admin&view=custDetails">Employee Details</a></li>
					<li><a href="/itcms/view.php?mod=admin&view=reports">Reports</a></li>
					<li><a href="/itcms/main.jsp?logOut=Y">Logout</a></li>
				</ul>
			<div class="menutitle">&nbsp;</div>	  
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
	</c:when>
	<c:otherwise>
		
	</c:otherwise>
</c:choose>		