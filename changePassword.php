<form action="process.php?action=changePassword" method="post">

<table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
  <tr id="entryTableHeader">
    <td>:: Change Password ::</td>
  </tr>
  <tr>
    <td class="contentArea"><div class="errorMessage" align="center"></div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
          <tr align="center">
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr class="entryTable">
            <td class="label">&nbsp;Current Password </td>
            <td class="content">
		<input name="cpass" type="password" class="box" id="cpass" />
	    </td>
          </tr>
        <tr class="entryTable">
            <td valign="top" class="label">&nbsp;New Password</td>
            <td class="content">
		<input name="npass" type="password" class="box" id="npass" />
            </td>
          </tr>
	<tr class="entryTable">
            <td valign="top" class="label">&nbsp;Re-Type New Password</td>
            <td class="content">
		<input name="rpass" type="password" class="box" id="rpass" />
            </td>
          </tr>

          <tr>
            <td width="200">&nbsp;</td>
            <td width="372">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input name="btnLogin" type="submit" id="btnLogin" value=" Change Password  "></td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>