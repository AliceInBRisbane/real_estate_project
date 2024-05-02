<?php include 'header.php'; ?>

<?php 
if(!isset($_SESSION['agent'])){
 header('location:'.BASE_URL.'agent-login.php') ;  
 exit;
}

?> 
 
<?php
if(isset($_POST['form_paypal'])) {
    try {
        $statement = $pdo->prepare("SELECT * FROM packages WHERE id=?");
        $statement->execute([$_POST['package_id']]);
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $_SESSION['package_id']= $row['id'];
            $_SESSION['price']= $row['price'];
            $_SESSION['allowed_days']= $row['allowed_days'];
            $allowed_properties = $row['allowed_properties'];
        }
        $statement = $pdo->prepare("SELECT * FROM properties WHERE agent_id=?");
        $statement->execute([$_SESSION['agent']['id']]);
        $total_properties = $statement->rowCount();
        
        if($allowed_properties != -1) {
            if($total_properties >= $allowed_properties) {
                unset ($_SESSION['package_id']);
                unset ($_SESSION['price']);
                unset ($_SESSION['allowed_days']);
                throw new Exception("You are going to downgrade your package. Please delete some properties to meet the package limit.");
            }
        }
        $response = $gateway->purchase(array(
            'amount' => $_SESSION['price'],
            'currency' => PAYPAL_CURRENCY,
            'returnUrl' => PAYPAL_RETURN_URL,
            'cancelUrl' => PAYPAL_CANCEL_URL,
        ))->send();
        if ($response->isRedirect()) {
            $response->redirect();
        } else {
            echo $response->getMessage();
        }
    } catch(Exception $e) {
        $error_message = $e->getMessage();
    }
}
?>


<?php

if(isset($_POST['form_stripe'])) {
    try{
        $statement = $pdo->prepare("SELECT * FROM packages WHERE id=?");
        $statement->execute([$_POST['package_id']]);
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $package_name= $row['name'];
            $_SESSION['package_id']= $row['id'];
            $_SESSION['price']= $row['price'];
            $_SESSION['allowed_days']= $row['allowed_days'];
            $allowed_properties = $row['allowed_properties'];
        }
        $statement = $pdo->prepare("SELECT * FROM properties WHERE agent_id=?");
        $statement->execute([$_SESSION['agent']['id']]);
        $total_properties = $statement->rowCount();
        if($allowed_properties != -1) {
            if($total_properties >= $allowed_properties) {
                unset ($_SESSION['package_id']);
                unset ($_SESSION['price']);
                unset ($_SESSION['allowed_days']);
                throw new Exception("You are going to downgrade your package. Please delete some properties to meet the package limit.");
            }
        }
    \Stripe\Stripe::setApiKey(STRIPE_TEST_SK);
    $response = \Stripe\Checkout\Session::create([
        'line_items' => [
            [
                'price_data' => [
                    'currency' => 'usd',
                    'product_data' => [
                        'name' => 'Package name :'.$package_name
                    ],
                    'unit_amount' => $_SESSION['price'] * 100,
                ],
                'quantity' => 1,
            ],
        ],
        'mode' => 'payment',
        'success_url' => STRIPE_SUCCESS_URL.'?session_id={CHECKOUT_SESSION_ID}',
        'cancel_url' => STRIPE_CANCEL_URL,
    ]);
    header('location: '.$response->url);
    exit;
} catch(Exception $e) {
    $error_message = $e->getMessage();
    }
}

?>
    <div class="page-top" style="background-image: url('uploads/banner.jpg')">
        <div class="bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Payment</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="page-content user-panel">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <?php include 'agent-sidebar.php'; ?>
                </div>
                <div class="col-lg-9 col-md-12">
                    <h4>Currently Active Plan</h4>
                    <div class="row box-items mb-4">
                        <?php
                        $statement = $pdo->prepare("SELECT * FROM orders
                                                    JOIN packages ON orders.package_id=packages.id
                                                    WHERE agent_id=? AND currently_active=?");
                        $statement->execute([$_SESSION['agent']['id'],1]);
                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                        $total = $statement->rowCount();
                        
                        ?>
                        <?php if($total): ?>
                        <div class="col-md-4">
                            <div class="box1">
                                <?php 
                                   foreach ($result as $row) {
                                    ?>
                                    <h4>$<?php echo $row['price'];?></h4>
                                    <p><?php echo $row['name'];?></p>
                                    <?php
                                    
                                    }
                                ?>
                               
                            </div>
                        </div>
                        <?php else: ?>
                        <div class="col-md-12 text-danger">
                            No Package Found.
                        </div>
                        <?php endif; ?>
                    </div>

                    <?php
                        if(isset($error_message)) {
                            echo "<div class='text-danger mb_20'>$error_message</div>";
                        }
                    ?>
                    
                    <h4>Upgrade Plan (Make Payment)</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered upgrade-plan-table">
                            <tr>
                                <td>
                                    <form action="" method="post">
                                    <select name="package_id" class="form-control select2">
                                        <?php
                                        $statement = $pdo->prepare("SELECT * FROM packages ORDER BY id DESC");
                                        $statement->execute();
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            ?>
                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?> ($<?php echo $row['price']; ?>)</option>
                                            <?php
                                        }
                                        ?>
                                      
                                    </select>
                                   
                                </td>
                                <td>
                                    <button type='submit' name='form_paypal' class="btn btn-secondary btn-sm buy-button">Pay with PayPal</button>
                                    </form>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <form action="" method="post">
                                    <select name="package_id" class="form-control select2">
                                    <?php
                                        $statement = $pdo->prepare("SELECT * FROM packages ORDER BY id DESC");
                                        $statement->execute();
                                        $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                                        foreach ($result as $row) {
                                            ?>
                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?> ($<?php echo $row['price']; ?>)</option>
                                            <?php
                                        }
                                        ?>
                                      
                                    </select>
                                </td>
                                <td>
                                    <button type='submit' name='form_stripe' class="btn btn-secondary btn-sm buy-button">Pay with Stripe</button>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>



<?php include 'footer.php'; ?>