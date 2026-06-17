<?php
	$emp_id = (int)$_SESSION['user_id'];
	$sql = "SELECT * 
			FROM tbl_complains
			WHERE status != 'close' 
			ORDER BY create_date DESC";
	$result = dbQuery($sql);
	if(dbNumRows($result) > 0){
?>
<h3>Open Complaints (<?php echo dbNumRows($result); ?>)</h3>	
<form action="processLeave.php?action=addUser" method="post"  name="frmListUser" id="frmListUser">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="text">
    	<col width="8%">
	<col width="8%">
	<col width="10%">
	<col width="56%">
	<col width="8%">
	<col width="10%">


	<tr align="center" id="listTableHeader">
      <td>Com. ID </td>
 	<td>Com. Type </td>
 	<td>Com. By </td>
 	<td>Com. Details</td>
      <td>Status</td>
      <td>Created On</td>
    </tr>
    <?php
	$i=0;
	while($row = dbFetchAssoc($result)) {
	extract($row);
	if ($i%2) {
		$class = 'row1';
	} else {
		$class = 'row2';
	}
	$i += 1;
	?>
    <tr class="<?php echo $class; ?>" style="height:25px;">      
      <td align="center"><?php echo 'ITHD' . (10000+$cid); ?></td>
	  <td align="center"><?php echo ucwords($comp_type); ?></td>
	  <td align="center"><?php echo ucwords($cust_name); ?></td>
	  <td>&nbsp;<?php echo $comp_desc; ?></td>
      <td align="center"><a href="javascript:closeComplain(<?php echo $cid; ?>);"><?php echo ucwords($status); ?></a></td>
	<td><?php echo $create_date; ?></td>

    </tr>
    <?php
	} // end while
	?>
    <tr>
      <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="5" align="right">&nbsp;</td>
    </tr>
  </table>
 <?php }//if 
 else {
 echo "<h3><font color=red>No Open Complaints</font></h3>";
 }
 ?> 
  <p>&nbsp;</p>
</form>
<p>&nbsp;</p>
