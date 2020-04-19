<?php 
include('head.php');

		echo '<div id="left"><div class="main"><table align=center  cellspacing="0" cellpadding="0" style="border-collapse: collapse;border:0px;">
		<tr>
		<form method=post action="index.php">
		<td align=right style="padding:0px; border:0px; margin:0px;">
				<input type=submit name=home value="Home" class="side-pan">
		</td>
		<td  align=right style="padding:0px; border:0px; margin:0px;" >
				<input type=submit name=team value="Team ICA" class="side-pan">
		</td>
		
		<td  align=left style="padding:0px; border-width:0px; margin:0px;">
				<input type=submit name=add value="Add Member" class="side-pan">
		</td>
		<td  align=left style="padding:0px; border-width:0px; margin:0px;">
				<input type=submit name=database value="Vulnerability List" class="side-pan">
		</td>
		<td  align=left style="padding:0px; border-width:0px; margin:0px;">
				<input type=submit name=add_vuln value="Add Exploit" class="side-pan">
		</td>
				</form></tr></table></div></div>
				<div id="right"></div><div align=center>';	

$user='root';
$password='';
$database_name='indishell_lab';

$conn = mysqli_connect("127.0.0.1",$user,$password,$database_name);
				
				
if(isset($_POST['home']))
{
	
	echo '<br><br><font size=5>This vulnerable code simulate the environment when user supplied data is getting pass in "order by" clause and application is not throwing any error.';
	
}

if(isset($_POST['team']))
{
	
	echo '
   <table width="50%" cellspacing="0" cellpadding="0" class="tb1" style="opacity: 0.7;">
   <tr><td width="5%" align=center style="padding: 10px;" >ID</td><td width="20%" align=center style="padding: 10px;">Handle name</td><td width="10%" align=center style="padding: 10px;">Level</td><td width="40%" align=center style="padding: 10px;">Expertise</td></tr></table>
   <table width="50%" cellspacing="0" cellpadding="0" class="tb1" style="margin:10px 2px 10px;opacity: 0.7;" >
   ';
    $run='select * from team_members';
    $result = mysqli_query($conn, $run);
	
        if (mysqli_num_rows($result) > 0) 
		{
			
                while($row = mysqli_fetch_assoc($result)) 
					{
                       echo '<tr><td width="5%" align=center style="padding: 10px;" >'.$row['id'].'</td><td width="20%" align=center style="padding: 10px;">'.$row['handle'].'</td><td width="10%" align=center style="padding: 10px;">'.$row['level'].'</td><td width="40%" align=center style="padding: 10px;">'.$row['expertise'].'</td></tr>';
					}
        }
		echo '</table>';
   
	
}


if(isset($_POST['database']))
{
	
	echo '
   <table width="50%" cellspacing="0" cellpadding="0" class="tb1" style="opacity: 0.7;">
   <tr><td width="10%" align=center style="padding: 10px;" >Sr. No.</td><td width="20%" align=center style="padding: 10px;">Added on</td>
   <td width="40%" align=center style="padding: 10px;">Vulnerability name/CVE ID</td></tr></table>
   <table width="60%" cellspacing="0" cellpadding="0" class="tb1" style="margin:10px 2px 10px;opacity: 0.7;" >
   ';
    $run='select * from exploit_list';
    $result = mysqli_query($conn, $run);
	
        if (mysqli_num_rows($result) > 0) 
		{
			
                while($row = mysqli_fetch_assoc($result)) 
					{
                       echo '<tr><td width="10%" align=center style="padding: 10px;" >'.$row['ID'].'</td><td width="20%" align=center style="padding: 10px;">'.$row['date'].'</td><td width="40%" align=center style="padding: 10px;">'.$row['vulnerability'].'</td></tr>';
					}
        }
		
		echo '</table>';
   
	
}


/////////////////////////
/////"Add a member" Form 
/////////////////////////
				
if(isset($_POST['add']))
	{
		echo '
<table width="35%" style=" border:0px;background-color: #191919; opacity: 0.9; padding: 20px;" >
			<form method=post>
		<tr><td align=center  colspan="2"> 	Member Info  </td></tr>
       <tr>
	   <td align=right>Handle: </td><td><input type=text name=handle> </td>
	   </tr>
		 <tr><td align=right>Level: </td><td><input type=text name=level style="width: 30%;"> </td></tr>
		 <tr><td align=right>Expertise: </td><td><input type=text name=expertise style="width: 100%;"> </td></tr>
		<tr><td align=center  colspan="2"> <input type=submit name=insert value="Add Member">  </td></tr>
       </table> 
	   
	   
'; 

	}

//////////////////////////////
/////Member adding code block
//////////////////////////////
	
if(isset($_POST['insert']))
{

if($_POST['handle']!='' && $_POST['level']!='' && $_POST['expertise']!='')
	{
	$handle=trim($_POST['handle']);
	$level=trim($_POST['level']);
	$expertise=trim($_POST['expertise']);
	
	
     $run="insert into team_members(handle,level,expertise) values('".$handle."','".$level."','".$expertise."')";
     
	
         if (mysqli_query($conn, $run)) 
		{
			
                echo 'Added the member :)';
        }
		else
		{
		echo 'Bhai ji, are you sure, everything was in place 0.o ?';
		}
		
   }
   
   else {
		echo 'handle?';
		}						
				
	
}	


////////////////////////////////
/////"Add a vulnerability" Form 
////////////////////////////////
				
if(isset($_POST['add_vuln']))
	{
		echo '
<table width="35%" style=" border:0px;background-color: #191919; opacity: 0.9; padding: 20px;" >
			<form method=post>
		<tr><td align=center  colspan="2"> 	Please add the vulnerability detail </td></tr>
       <tr>
	   <td align=center  colspan="2"> <textarea rows=2 cols=40 name=vuln_name>Vulnerability detail....</textarea>  </td></tr>
       <tr>
	   <td align=center  colspan="2"> <input type=submit name=vuln_add value="Add to List">  </td></tr>
       
	   </table> 
	   
	   
'; 

	}


//////////////////////////////
/////Member adding code block
//////////////////////////////

if(isset($_POST['vuln_add']))
	{

	if($_POST['vuln_name']!='')
	{
	 
	 $run="insert into exploit_list(date,vulnerability) values('".date("F j, Y, g:i a")."','".$_POST['vuln_name']."')";
     
	
         if (mysqli_query($conn, $run)) 
		{
			
                echo 'Vulnerability detail added successfully :)';
        }
		else
		{
		echo 'Bhai ji, are you sure, everything was in place 0.o ?';
		}

	}
	else 
	{
	echo 'something went wrong :(';
	}
	}

		

?>
