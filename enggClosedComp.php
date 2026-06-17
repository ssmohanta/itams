

<?php
	$page = 1;
	$pages = 0;
	$totcmpl = 0;	
	$sql3 = "SELECT COUNT(*) TOT FROM tbl_complains WHERE status = 'close'" ;
	$result3 = dbQuery($sql3);
	$row3 = dbFetchAssoc($result3);
	extract($row3);
	$totcmpl = $TOT;
	//echo $totcmpl;
	$pages = floor($totcmpl/15);
	if($totcmpl%15 != 0) $pages += 1;
	//echo $pages;
	if(isset($_GET['page'])) $page = $_GET['page'];

	$eng_name = $_SESSION['user_name'];
	$sqle = "SELECT CONCAT(FLOOR((SUM(TIMESTAMPDIFF(SECOND,create_date,close_date))/count(*)) / 3600),':',LPAD(FLOOR(FLOOR((SUM(TIMESTAMPDIFF(SECOND,create_date,close_date))/count(*)) % 3600) / 60),2,'0'),':',LPAD(FLOOR((SUM(TIMESTAMPDIFF(SECOND,create_date,close_date))/count(*)) % 60),2,'0')) AVGTM FROM tbl_complains
			WHERE status = 'close'" ;
	$resulte = dbQuery($sqle);
	while($rowe = dbFetchAssoc($resulte)) {
		extract($rowe);
		echo '<h3>Closed Complaints ('.$totcmpl.')</h3><h4>Average resolution time (hh:mm:ss): <b>' . $AVGTM . '</b></h4>';
	}
	
	

	
?>
<form action="processLeave.php?action=addUser" method="post"  name="frmListUser" id="frmListUser">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="text">
	<col width="13%">
	<col width="24%">
	<col width="15%">
	<col width="15%">
	<col width="20%">
	<col width="13%">

    <tr align="center" id="listTableHeader">
      <td>Complaint ID</td>
      <td>Complaint By</td>
      <td>Create Date</td>
	<td>Close Date</td>
	<td>Closed By</td>
	<td>Res. Time<br/>(HH:MM:SS)</td>
    </tr>
    <?php
	$limit1 = ($page-1)*15;
	$sql = "SELECT cid, comp_title, comp_desc,
eng_name, cust_name, status, create_date, close_date, CONCAT(FLOOR(TIMESTAMPDIFF(SECOND, create_date, close_date)/3600),':',LPAD(FLOOR(FLOOR(TIMESTAMPDIFF(SECOND, create_date, close_date)%3600)/60),2,'0'),':',LPAD(TIMESTAMPDIFF(SECOND, create_date, close_date)%60, 2, '0')) diff FROM tbl_complains
			WHERE status = 'close'
			ORDER BY close_date DESC 
			LIMIT $limit1, 15";
	$result = dbQuery($sql);
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
      <td><a href="javascript:closedComplainAdmin(<?php echo $cid;?>)"><?php echo 'ITHD' . ($cid+10000) ; ?></a></td>
      <td align="center"><?php echo ucwords($cust_name); ?></td>
      <td  align="center"><?php echo ucwords($create_date); ?></td>
	<td  align="center"><?php echo ucwords($close_date); ?></td>
	<td  align="center"><?php echo ucwords($eng_name); ?></td>
	<td align="center"><?php echo ucwords($diff); ?></td>

    </tr>
    <?php
	} // end while
	?>
      </table>
  </form>
<p>&nbsp;</p>
<div align="center">
<?php
if($pages > 3 && $page == 1){
	?>
	<table>
					<tr>
						<td><b>1</b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=2">2</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=3">3</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=2">next</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $pages;?>">last</a></b></td>						
					</tr>
	</table>
	<?php
}
if($pages > 3 && $page == $pages){
	?>
	<table>
					<tr>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=1">first</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $pages - 1 ;?>">prev</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $pages - 2 ;?>"><?php echo $pages - 2 ;?></a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $pages - 1 ;?>"><?php echo $pages - 1 ;?></a></b></td>
						<td><b><?php echo $pages ;?></b></td>						
					</tr>
	</table>
	<?php
}
if($pages > 3 && $page != $pages && $page != 1){
	?>
	<table>
					<tr>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=1">first</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $page - 1 ;?>">prev</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $page - 1 ;?>"><?php echo $page - 1 ;?></a></b></td>
						<td><b><?php echo $page ;?></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $page + 1 ;?>"><?php echo $page + 1 ;?></a></b></td>	
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $page + 1 ;?>">next</a></b></td>
						<td><b><a href="view.php?mod=employee&view=viewComplainClose&page=<?php echo $pages ;?>">last</a></b></td>						
					</tr>
	</table>
	<?php
}
?>

</div>