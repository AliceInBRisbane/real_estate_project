<?php include 'header.php'; ?>

<?php
if(!isset($_SESSION['customer'])) {
    header('location: '.BASE_URL.'customer-login');
    exit;
}
?>

<?php
$statement = $pdo->prepare("SELECT * FROM wishlists WHERE id=?");
$statement->execute([$_REQUEST['id']]);

$success_message="Wislist item deleted successfully.";
$_SESSION['success_message'] = $success_message;
header('location: '.BASE_URL.'customer-wishlist');
exit;
?>

