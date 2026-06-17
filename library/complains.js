// JavaScript Document
function checkAddUserForm()
{
	with (window.document.frmAddUser) {
		if (isEmpty(txtUserName, 'Enter user name')) {
			return;
		} else if (isEmpty(txtPassword, 'Enter password')) {
			return;
		} else {
			submit();
		}
	}
}

function viewComplainDetail(compId)
{
	window.location.href = 'view.php?mod=admin&view=viewByCompID&compId='+compId;
}

function viewEmployeeComDetail(compId)
{
	window.location.href = 'view.php?mod=employee&view=viewByCompID&compId='+compId;
}

function closeComplain(compId)
{
	window.location.href = 'view.php?mod=employee&view=closeComplain&compId='+compId;
}


function changePassword(userId)
{
	window.location.href = 'index.php?view=modify&userId=' + userId;
}

function deleteEngg(eId)
{
	if (confirm('Do you want to delete this Engineer?')) {
		window.location.href = 'process.php?action=deleteEngg&eId=' + eId;
	}
}

function editEnggDetail(eId)
{
	var url = 'view.php?mod=admin&view=doEdit&eId=' + eId;
	//alert(url);
	window.location.href  = url;
}

function deleteCust(cId)
{
	if (confirm('Do you want to delete this Customer?')) {
		window.location.href = 'process.php?action=deleteCust&cId=' + cId;
	}
}

function editCustDetail(cId)
{
	var url = 'view.php?mod=admin&view=doEditCust&cId=' + cId;
	//alert(url);
	window.location.href  = url;
}

function updateComplaint()
{
	if(document.f1.empComment.value == ''){
		alert('Comment is Empty');
	}
	else{
		document.f1.action = 'process.php?action=closeComplain&status=working';
		document.f1.submit();
	}
}

function closeComplaint()
{
	if(document.f1.empComment.value == ''){
		alert('Comment is Empty');
	}
	else{
		//console.log(document.getElementById("catrdescr").value);
		$("#catdesc").val($("#catrdescr").val());
		//console.log($("#catdesc").val());		
		document.f1.action = 'process.php?action=closeComplain&status=close';
		document.f1.submit();
	}
}

function closedComplainAdmin(compId)
{
	window.location.href = 'view.php?mod=employee&view=closedComplainAdmin&compId='+compId;
}

function goBack() {
    window.history.back()
}

function RefreshPage(Period) 
{
	setTimeout("location.reload(true);", Period);
}