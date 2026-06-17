<?php
require_once './library/config.php';
require_once './library/functions.php';

checkUser();

$action = isset($_GET['action']) ? $_GET['action'] : '';
$status = isset($_GET['status']) ? $_GET['status'] : '';

switch ($action) {
	
	case 'makeComplain' :
		makeComplain();
	break;
	
	case 'assignComplain' :
		assignComplain();
	break;
	
	case 'commentOnComplain' :
		commentOnComplain();
	break;
	
	case 'closeComplain' :
		closeComplain();
	break;
	//deleteCust
	case 'deleteEngg' :
		deleteEngg();
	break;
	
	case 'deleteCust' :
		deleteCust();
	break;
	
	case 'addEngg' :
		addEngg();
	break;
	
	case 'addCust' :
		addCust();
	break;
	
	case 'editEngg' :
		editEngg();
	break;
	
	case 'selectPlan' :
		selectPlan();
	break;
	
	case 'editCust' :
		editCust();
	break;
		
	case 'changePassword' :
		changePassword();
	break;
		
	default :
	    // if action is not defined or unknown
		// move to main user page
		header('Location: index.php');
}


function makeComplain()
{
	//echo 'Make Complain...';
    	$compType = $_POST['compType'];
	$compSubType = $_POST['compSubType'];
	$c_location = $_POST['c_location'];	
	$compTitle = $_POST['compTitle'];
	$compDesc = $_POST['compDesc'];
	$cust_id = (int)$_SESSION['user_id'];
	$cust_name = $_SESSION['user_name'];
	$c_extension = $_POST['c_extension'];
	$c_mobile = $_POST['c_mobile'];

	$sql = "INSERT INTO tbl_complains (cust_id, cust_name, c_location, comp_type, comp_subtype, comp_title, comp_desc, status, eng_id, eng_name, eng_comment, create_date, close_date, c_extension, c_mobile)
			VALUES ($cust_id, '$cust_name', '$c_location', '$compType', '$compSubType', '$compTitle', '$compDesc', 'open', 0, '' , '', NOW(), '' , '$c_extension', '$c_mobile')";
		
	//	echo $sql;		
	$result = dbQuery($sql);
	//header("Location: index.php?view=bal&error=" . urlencode("$data"));	
	header("Location: view.php?mod=customer&view=compDetails");	
	exit;	
}

function addEngg()
{
	//echo 'Make Complain...';
    $EngineerName = $_POST['EngineerName'];
	$Password = $_POST['Password'];
	$Address = $_POST['Address'];
	$Email = $_POST['Email'];
	$Mobile = $_POST['Mobile'];
	
	$sql = "INSERT INTO tbl_engineer (ename, epass, address, email, e_mobile, date_time) 
			VALUES ('$EngineerName', '$Password', '$Address', '$Email', '$Mobile', NOW())";
		
	$result = dbQuery($sql);
	//header("Location: index.php?view=bal&error=" . urlencode("$data"));	
	header("Location: view.php?mod=admin&view=enggDetails");	
	exit;	
}

function addCust()
{
	//echo 'Make Complain...';
    $CustomerName = $_POST['CustomerName'];
	$Password = $_POST['Password'];
	$Address = $_POST['Address'];
	$Email = $_POST['Email'];
	$Mobile = $_POST['Mobile'];
	
	$sql = "INSERT INTO tbl_customer (cname, cpass, address, email, c_mobile, date_time) 
			VALUES ('$CustomerName', '$Password', '$Address', '$Email', '$Mobile', NOW())";
		
	$result = dbQuery($sql);
	//header("Location: index.php?view=bal&error=" . urlencode("$data"));	
	header("Location: view.php?mod=admin&view=custDetails");	
	exit;	
}

function assignComplain()
{
	//echo 'Make Complain...';
    $compId = $_POST['compId'];
	$engId = (int)$_POST['engId'];
	$sql = "SELECT ename FROM tbl_engineer WHERE eid = $engId";	
	$result = dbQuery($sql);
	while($row = dbFetchAssoc($result)){
		$eng_name = $row['ename'];
	}
	$sql = "UPDATE tbl_complains 
			SET status = 'assigned', 
				eng_id = $engId, 
				eng_name = '$eng_name'
			WHERE cid = $compId";	
			
	//	echo $sql;		
	$result = dbQuery($sql);
	header("Location: view.php?mod=admin&view=compDetails");	
	exit;	
}

function commentOnComplain()
{
	//echo 'Add Comment on Complain...';
    $compId = $_POST['compId'];
	$empComment = $_POST['empComment'];
	$engId = (int)$_SESSION['user_id'];
	$sql = "UPDATE tbl_complains 
			SET status = 'working',
				eng_comment = '$empComment' 
			WHERE cid = $compId";	
	$result = dbQuery($sql);
	header("Location: view.php?mod=employee&view=viewComplain");	
	exit;	
}

function closeComplain()
{
	//echo 'Add Comment on Complain...';<?php echo )
	$status = $_GET['status'];
	$cat_con = $_POST['catdesc'];
	$myArray = explode(',', $cat_con);
	$compId = $_POST['compId'];
	$empComment = $_POST['empComment'];
	$eng_name = ucwords($_SESSION['user_name']);
	$sql = "UPDATE tbl_complains 
			SET status = '$status', 
				eng_name = '$eng_name', 
				eng_comment = '$empComment',
				catridge_consum = '$cat_con',
				close_date = NOW() 
			WHERE cid = $compId";	
	$result = dbQuery($sql);
	
	if(isset($_POST['catdesc'])){
		
		foreach($myArray as $i => $item) {
			
			// $array[$i] is same as $item
			$sqlu = "UPDATE CARTRIDGE_CONSUMABLES 
				SET STOCK = (STOCK - 1) 
				WHERE DESCRIPTION = '$item'";	
			$resultu = dbQuery($sqlu);
		}
		
	}
	
	header("Location: view.php?mod=employee&view=viewComplain");	
	exit;	
}

function deleteEngg()
{
	//echo 'Add Comment on Complain...';
    $eId = $_GET['eId'];
	//$empComment = $_POST['empComment'];
	$sql = "DELETE FROM tbl_engineer 
				WHERE eid = $eId";	
	$result = dbQuery($sql);
	header("Location: view.php?mod=admin&view=enggDetails");	
	exit;	
}

function deleteCust()
{
	//echo 'Add Comment on Complain...';
    $cId = $_GET['cId'];
	//$empComment = $_POST['empComment'];
	$sql = "DELETE FROM tbl_customer 
				WHERE cid = $cId";	
	$result = dbQuery($sql);
	header("Location: view.php?mod=admin&view=custDetails");	
	exit;	
}


function editEngg()
{
	//echo 'Make Complain...';
    $eid = $_POST['eid'];
	$EngineerName = $_POST['EngineerName'];
	$Password = $_POST['Password'];
	$Address = $_POST['Address'];
	$Email = $_POST['Email'];
	$Mobile = $_POST['Mobile'];
	
	$sql = "UPDATE tbl_engineer 
			SET ename = '$EngineerName', 
				epass = '$Password', 
				address = '$Address', 
				email = '$Email', 
				e_mobile = '$Mobile'
			WHERE eid = $eid"; 	
	$result = dbQuery($sql);
	//header("Location: index.php?view=bal&error=" . urlencode("$data"));	
	header("Location: view.php?mod=admin&view=enggDetails");	
	exit;	
}

function editCust()
{
	//echo 'Make Complain...';
    	$cid = $_POST['cid'];
	$CustomerName = $_POST['CustomerName'];
	$Password = $_POST['Password'];
	$Address = $_POST['Address'];
	$Email = $_POST['Email'];
	$Mobile = $_POST['Mobile'];
	
	$sql = "UPDATE tbl_customer 
			SET cname = '$CustomerName', 
				cpass = '$Password', 
				address = '$Address', 
				email = '$Email', 
				c_mobile = '$Mobile'
			WHERE cid = $cid"; 	
	$result = dbQuery($sql);
	header("Location: view.php?mod=admin&view=custDetails");	
	exit;	
}

function selectPlan(){
	$plansDetails = array('120'=>'Basic Plan',
					'30'=>'Music Plan',
					'100'=>'Movie Plan',
					'50'=>'Knowledge Plan'); 
	$plan =$_POST['plan'];
	$plan_string = "";
	$userId = $_SESSION['user_id'];
	$amt = 0;
	for($i=0;$i<count($plan);$i++){
		$price = $plan[$i];
		$plan_string .= $plansDetails["$price"].", ";//$plan[$i]
		$amt += (int)$price;	
	}
	$date= date('d');
	$sql_check = "SELECT * FROM tbl_plans WHERE cid = $userId";
	$res = dbQuery($sql_check);
	if(dbNumRows($res)==1){
		header("Location: view.php?mod=customer&view=planExist");
	}else {
		$sql = "INSERT INTO tbl_plans (cid, plans, amt, plan_date)
				VALUES ($userId,'$plan_string',$amt,'$date')";
		dbQuery($sql);
		header("Location: view.php?mod=customer&view=planSuccess");
	}
}

function changePassword(){
	$cpass = $_POST['cpass'];
	$npass = $_POST['npass'];
	$rpass= $_POST['rpass'];
	$user = $_SESSION['user_name'];
	
	if($npass == $rpass){	
		$sql = "UPDATE tbl_engineer 
			SET epass = PASSWORD('$npass')
			WHERE ename = $user "; 	
		//echo $sql;
		$result = dbQuery($sql);
		header("Location: view.php?mod=customer&view=changePassword");	
		exit;	
	}else{
		echo "Passwords do not match";
	}
}
?>