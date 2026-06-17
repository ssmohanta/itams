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
  <form name="f1" action="process.php?action=closeComplain" method="post">
	<tr>
    <td class="contentArea"><div class="errorMessage" align="center"></div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
          <tr align="center">
            <td colspan="2">
			<input type="hidden" name="compId" value="<?php echo $cid; ?>"/>			</td>
          </tr>
          <tr class="entryTable">
            <td class="label">&nbsp;Complaint ID </td>
            <td class="content"><font color="#0066FF"><b><?php echo ucwords('ITHD' . (10000 + $cid)); ?></b></font></td>
          </tr>
		  <tr class="entryTable">
            <td class="label">&nbsp;Complaint Type </td>
            <td class="content"><font color="#0066FF"><b><?php echo ucwords($comp_type); ?></b></font></td>
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
			<textarea name="compDesc" cols="60" rows="6" class="box" id="compDesc"  readonly="readonly"><?php echo $comp_desc; ?></textarea></td>
          </tr>
          
		  <tr>
            <td valign="top" class="label">&nbsp;Status</td>
            <td class="content"><font color="red"><b><?php echo ucwords($status); ?></b></font><?php if($status == 'working') {echo '   (Last update by <b>'.$eng_name.'</b> at '.$close_date.')';} ?></td>
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
		  
			<?php if($comp_type == 'Catridge Refilling') {
			?>
			
			<tr>
				<td valign="top" class="label">&nbsp;Catridge Consumable</td>
				<td class="content">
				
					<?php
		  
						$sqlcat = "SELECT * FROM CARTRIDGE_CONSUMABLES";
						$resultcat = dbQuery($sqlcat);
					?>
						<select name="catrdescr" id="catrdescr" multiple="multiple" data-placeholder="Select Catridge">
							
							<?php
								while($rowcat = dbFetchAssoc($resultcat)) {
								extract($rowcat);
							?>
								<option value="<?php echo $DESCRIPTION; ?>"><?php echo $DESCRIPTION; ?></option>
								
								
							<?php
								}
							?>
						</select>
						
						<script>
							$(document).ready(function() {
								// create MultiSelect from select HTML element
								var required = $("#required").kendoMultiSelect().data("kendoMultiSelect");
								var optional = $("#catrdescr").kendoMultiSelect({
									autoClose: false
								}).data("kendoMultiSelect");

								$("#get").click(function() {
									alert("Attendees:\n\nRequired: " + required.value() + "\nOptional: " + optional.value());
								});
							});
						</script>
						
						<input type="hidden" name="catdesc" id="catdesc"/>
						
				</td>
			</tr>
		  
			<?php
				}
			?>

	          
		  <tr>
            <td valign="top" class="label">&nbsp;Comment</td>
            <td class="content">
			<textarea name="empComment" cols="60" rows="4" class="box" id="empComment" ><?php echo $eng_comment; ?></textarea>
			</td>
          </tr>
          
		</form> 
		  <tr>
            <td width="200">&nbsp;</td>
            <td width="372">&nbsp;</td>
          </tr>
          <tr>
            <td><button  style="color:#0000FF;font-weight:bold;padding:10px;font-size:14px;" onClick="goBack()">
			Back
		</button></td>
            <td>
		<button style="color:#FFA500;font-weight:bold;padding:10px;font-size:14px;" onClick="updateComplaint()">
		Update Complaint
		</button>

		<button style="color:#66CD00;font-weight:bold;padding:10px;font-size:14px;" id="secls" onClick="closeComplaint()">
		Close Complaint
		</button>
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