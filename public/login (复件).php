<?php  
//注销登录  
if($_GET['action'] == "logout")
{   
	if(!isset($_SESSION))
	{
		session_start();
	}
    #unset($_SESSION['userid']);  
    unset($_SESSION['username']);  
	session_destroy();
    echo '<meta charset="utf-8">注销登录成功！点击此处 <a href="login.html">登录</a>';  
    exit;  
}  
//登录  
if(!isset($_POST['submit']))
{  
    exit('<meta charset="utf-8">非法访问!');  
}  
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
    exit;  
}
else 
{  
    header('Location:login.html');  
}  



