<form action="process.php?action=makeComplain" method="post">

<table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
  <tr id="entryTableHeader">
    <td>:: Make Complains ::</td>
  </tr>
  <tr>
    <td class="contentArea"><div class="errorMessage" align="center"></div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
          <tr align="center">
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr class="entryTable">
            <td class="label">&nbsp;Complaint Type </td>
            <td class="content">
			<select name="compType" class="box">
			    	<option value="CartridgeConsumables">Cartridge Refilling</option>
				<option value="hardware">Hardware Related</option>
				<option value="software">Software Related</option>
				<option value="network">Network Related</option>
		  </select></td>          </tr>
	    <!--<tr class="entryTable">
            <td class="label">&nbsp;Complaint SubType </td>
            <td class="content">
			<select name="compSubType" class="box">
				<option value="Kyocera Refilling">Kyocera Refilling</option>
				<option value="88A Catridge (HP P1008) Refilling">88A Catridge (HP P1008) Refilling</option>
				<option value="Printer Paper Jam">Printer Paper Jam</option>
				<option value="UPS Backup Time Problem">UPS Backup Time Problem</option>
				<option value="12A Catridge (Samsung) Refilling">12A Catridge (Samsung) Refilling</option>
				<option value="36A Catridge Refilling">36A Catridge Refilling</option>
				<option value="PC Booting Problem">PC Booting Problem</option>
				<option value="PC Restarts Automatically">PC Restarts Automatically</option>
				<option value="Software Installation">Software Installation</option>
				<option value="Internet Connectivity Problem">Internet Connectivity Problem</option>
				<option value="Outlook Problem">Outlook Problem</option>
				<option value="Other">Other</option>
			</select></td> 
			</tr>--><!--
          <tr class="entryTable">
            <td class="label">&nbsp;Complaint Title </td>
            <td class="content"><input name="compTitle" type="text" class="box" id="compTitle" value="" size="50" maxlength="100" /></td>
          </tr>-->
	<tr class="entryTable">
            <td valign="top" class="label">&nbsp;Complaint Description</td>
            <td class="content"><input name="compTitle" type="hidden" value="blank">
			<textarea name="compDesc" cols="50" rows="6" class="box" id="compDesc"></textarea></td>
          </tr>
	<tr class="entryTable">
            <td class="label">&nbsp;Location </td>
            <td class="content"><input name="c_location" type="text" id="c_location" maxlength="40" /></td>
          </tr>
          
	  <tr class="entryTable">
            <td valign="top" class="label">&nbsp;Extension No</td>
            <td class="content"><input name="c_extension" type="text" maxlength="4"></td>
          </tr>
	  <tr class="entryTable">
            <td valign="top" class="label">&nbsp;Mobile</td>
            <td class="content"><input name="c_mobile" type="text" maxlength="10"></td>
          </tr>
	  



          <tr>
            <td width="200">&nbsp;</td>
            <td width="372">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><input name="btnLogin" type="submit" id="btnLogin" value=" Make Complaint  "></td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>