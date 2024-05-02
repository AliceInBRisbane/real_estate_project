<?php
$dbhost = '127.0.0.1:3316';
$dbname = 'real_estate_project';
$dbuser = 'root';
$dbpass = '';
try {
    $pdo = new PDO("mysql:host={$dbhost};dbname={$dbname}", $dbuser, $dbpass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
}
catch( PDOException $exception ) {
    echo "Connection error :" . $exception->getMessage();

}


define("BASE_URL", "http://localhost:8081/real_estate_project/");
define("ADMIN_URL", BASE_URL."admin/");

define("SMTP_HOST", "sandbox.smtp.mailtrap.io");
define("SMTP_PORT", "25");
define("SMTP_USERNAME", "36c16d55fd2e01");
define("SMTP_PASSWORD", "9116f67a8a6138");
define("SMTP_ENCRYPTION", "tls");
define("SMTP_FROM", "from@example.com");





?>


