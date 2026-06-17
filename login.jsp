<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<c:choose>
	<c:when test="${not empty param.txtUserName}">
		<c:choose>
			<c:when test="${param.utype == 'customer'}">				
				<sql:query var="rs1" dataSource="jdbc/hpvp1">		      
					SELECT  cid, cname, cfullname FROM tbl_customer WHERE cname = ? AND cpass = PASSWORD( ? )
					<sql:param value="${param.txtUserName}"/>
					<sql:param value="${param.txtPassword}"/>
				</sql:query>
				<c:if test="${rs1.getRowCount() > 0}">	
					<c:set var="user_id" value="${rs1.rows[0].cid}" scope="session" />
					<c:set var="user_name" value="${rs1.rows[0].cfullname}" scope="session" />
					<c:set var="user_type" value="${param.utype}" scope="session" />
					<c:redirect url="main.jsp"/>
				</c:if>				
			</c:when>
			<c:when test="${param.utype == 'supplier'}">				
				<sql:query var="rs1" dataSource="jdbc/hpvp1">		      
					SELECT  sid, sname	FROM tbl_supplier	WHERE sname = ? AND spass = PASSWORD( ? )
					<sql:param value="${param.txtUserName}"/>
					<sql:param value="${param.txtPassword}"/>
				</sql:query>
				<c:if test="${rs1.getRowCount() > 0}">		
					<c:set var="user_id" value="${rs1.rows[0].sid}" scope="session" />
					<c:set var="user_name" value="${rs1.rows[0].sname}" scope="session" />
					<c:set var="user_type" value="${param.utype}" scope="session" />
					<c:redirect url="main.jsp"/>
				</c:if>
			</c:when>
			<c:when test="${param.utype == 'employee'}">				
				<sql:query var="rs1" dataSource="jdbc/hpvp1">		      
					SELECT  eid, ename, efullname FROM tbl_engineer	WHERE ename = ? AND epass = PASSWORD( ? )
					<sql:param value="${param.txtUserName}"/>
					<sql:param value="${param.txtPassword}"/>
				</sql:query>
				<c:if test="${rs1.getRowCount() > 0}">	
					<c:set var="user_id" value="${rs1.rows[0].eid}" scope="session" />
					<c:set var="user_name" value="${rs1.rows[0].efullname}" scope="session" />
					<c:set var="user_type" value="${param.utype}" scope="session" />
					<c:redirect url="main.jsp"/>
				</c:if>
			</c:when>
			<c:when test="${param.utype == 'admin'}">				
				<c:if test="${param.txtPassword == 'admin123'}">	
					<c:set var="user_id" value="admin" scope="session" />
					<c:set var="user_name" value="Administrator" scope="session" />
					<c:set var="user_type" value="admin" scope="session" />
					<c:redirect url="main.jsp"/>
				</c:if>	
			</c:when>
			<c:otherwise>
				
			</c:otherwise>
		</c:choose>		
	</c:when>
	<c:otherwise>
		
	</c:otherwise>
</c:choose>
<html>
<head>
	<title>Complain Management System- Login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<link href="include/admin.css" rel="stylesheet" type="text/css">
	<link href="include/style.css" rel="stylesheet" type="text/css">
	<link href="include/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<br/>
	<br/>
	<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
	 <tr> 
	  <td><img src="images/complains.jpg" width="1200" height="120"></td>
	 </tr>
	 <tr> 
	  <td valign="top"> <table width="100%" border="0" cellspacing="0" cellpadding="20">
		<tr> 
		 <td class="contentArea"> <form method="post" name="frmLogin" id="frmLogin">
		   <p>&nbsp;</p>
		   <table width="350" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
			<tr id="entryTableHeader"> 
			 <td>:: User Login ::</td>
			</tr>
			<tr> 
			 <td class="contentArea"> 
			 <div class="errorMessage" align="center"><?php echo $errorMessage; ?></div>

			  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
			   <tr align="center"> 
				<td colspan="3">&nbsp;</td>
			   </tr>
			   <tr class="text"> 
				<td width="100" align="right">User Name</td>
				<td width="10" align="center">:</td>
				<td><input name="txtUserName" type="text" class="box" id="txtUserName"  size="30" maxlength="40"></td>
			   </tr>
			   <tr>
				 <td align="right">Password</td>
				 <td align="center">:</td>
				 <td><input name="txtPassword" type="password" class="box" id="txtPassword" size="30" maxlength="40"></td>
			   </tr>
			   <tr> 
				<td width="100" align="right">User Type </td>
				<td width="10" align="center">:</td>
				<td><label>
				  <select name="utype" class="box">
				  <!--<option value="admin">&nbsp;&nbsp; Administrator &nbsp;</option>-->
				  <option value="customer">&nbsp;&nbsp; Non-Employee User&nbsp;</option>
				  <option value="employee" selected>&nbsp;&nbsp; Service Engineer &nbsp;</option>
				  </select>
				  </label></td>
			   </tr>
			   <tr>
				 <td colspan="2">&nbsp;</td>
				 <td>&nbsp;</td>
			   </tr>
		<tr>
				 <td colspan="2">&nbsp;</td>
				 <td>&nbsp;</td>
			   </tr>

			   <!--<tr>
				 <td colspan="2">&nbsp;</td>
				 <td><div align="right">New User <a href="register.php">Register Here</a> </div></td>
			   </tr>
			   <tr>
				 <td colspan="3"><div align="right"><a href="forget-password.php">Forget Password</a> </div></td>
				</tr>
			   <tr> -->
				<td colspan="2">&nbsp;</td>
				<td><input name="btnLogin" type="submit" id="btnLogin" value=" Login Now " style="font-size:14px;color:#0066FF;padding:5px 8px;"></td>
			   </tr>
			  </table></td>
			</tr>
		   </table>
		   <p>&nbsp;</p>
		  </form></td>
		</tr>
	   </table></td>
	 </tr>
	</table>
	<p>&copy; CS & IS Department</a></p>
</body>
</html>
