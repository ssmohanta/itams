<?php
$cid = (int)$_GET['compId'];
$sql = "SELECT * FROM tbl_complains 
		WHERE cid = $cid";
$result = dbQuery($sql);
while($row = dbFetchAssoc($result)) {
extract($row);
?>
<table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
  <tr id="entryTableHeader">
    <td>:: Close Complaint ::</td>
  </tr>
  
	<tr>
    <td class="contentArea"><div class="errorMessage" align="center"></div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
          <tr align="center">
            <td colspan="2">
			<input type="hidden" name="compId" value="<?php echo $cid; ?>"/>			</td>
          </tr>
          
		  <tr class="entryTable">
            <td class="label">&nbsp;Complainer Name </td>
            <td class="content"><font color="#0066FF"><b><?php echo ucwords($cust_name); ?></b></font></td>
          </tr>
          <!--
		  <tr class="entryTable">
            <td class="label">&nbsp;Complain Title </td>
            <td class="content"><font color="#FF0000"><b><?php echo $comp_title; ?></b></font></td>
          </tr>
		  -->
          <tr class="entryTable">
            <td valign="top" class="label">&nbsp;Complain Description</td>
            <td class="content">
			<textarea name="compDesc" cols="50" rows="6" class="box" id="compDesc"  readonly><?php echo $comp_desc; ?></textarea></td>
          </tr>
          
		  <tr>
            <td valign="top" class="label">&nbsp;Status</td>
            <td class="content"><font color="red"><b><?php echo ucwords($status); ?></b></font></td>
          </tr>
          
		  <tr>
            <td valign="top" class="label">&nbsp;Date Of Creation</td>
            <td class="content">
			<?php echo $create_date; ?>			</td>
          </tr>
          <tr>
            <td valign="top" class="label">&nbsp;Extension No</td>
            <td class="content">
			<?php echo $c_extension; ?>		</td>
          </tr>
	<tr>
            <td valign="top" class="label">&nbsp;Mobile</td>
            <td class="content">
			<?php echo $c_mobile; ?>		</td>
          </tr>

	<tr>
            <td valign="top" class="label">&nbsp;Location</td>
            <td class="content">
			<?php echo $c_location; ?>		</td>
          </tr>
		  
		<tr>
            <td valign="top" class="label">&nbsp;Catridge Consumed</td>
            <td class="content">
			<?php echo $catridge_consum; ?>		</td>
          </tr>	  

	          
		  <tr>
            <td valign="top" class="label">&nbsp;Comment</td>
            <td class="content">
			<textarea name="empComment" cols="60" rows="4" class="box" id="empComment" readonly><?php echo $eng_comment; ?></textarea>
			</td>
          </tr>
          
	
		  <tr>
            <td width="200">&nbsp;</td>
            <td width="372">&nbsp;</td>
          </tr>
          <tr>
            <td><button  style="color:#0000FF;font-weight:bold;padding:10px;font-size:14px;" onClick="goBack()">
			Back
		</button>
</td>
            <td>
			</td>
          </tr>
      </table></td>
  </tr>
</table>

<?php 
}//while
?>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>