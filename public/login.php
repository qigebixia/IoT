<?php  
//注销登录  
$username = htmlspecialchars($_POST['username']);  
$password = $_POST['password'];  

//包含数据库连接文件  
include('conn.php');  
//检测用户名及密码是否正确  
$check_query = mysql_query("select * from userlists where username='$username' and password='$password' limit 1");  
if($result = mysql_fetch_array($check_query))
{  
    //登录成功  
    if(!isset($_SESSION))
	{
    	session_start();
	}   
    $_SESSION['username'] = $result['username'];  
	$_SESSION['password'] = $result['password']; 
   	header('Location:main.php'); 
    exit($_SESSION['username']);  
}
else 
{  
    exit('no ' +$_SESSION['username']);  
}  



