<?php include 'header.php'; ?>




<div class="page-top" style="background-image: url('uploads/banner.jpg')">
        <div class="bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Pricing</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="page-content pricing">
        <div class="container">
            <div class="row pricing">
                <?php
                $statement = $pdo->prepare("SELECT * FROM packages ORDER BY id ASC");
                $statement->execute();
                $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                $total = $statement->rowCount();
                foreach ($result as $row) {
                    if($row['allowed_featured_properties']== 0 ){
                        $symbol_1 = 'fas fa-times';
                        $number_1 ='No';
                    }else{
                        $symbol_1 = 'fas fa-check';
                        $number_1 = $row['allowed_featured_properties'];
                        if($number_1== -1){
                            $number_1 = 'Unlimited';
                        }
                    }
                    if($row['allowed_photos']== 0 ){
                        $symbol_2 = 'fas fa-times';
                        $number_2 ='No';
                    }else{
                        $symbol_2 = 'fas fa-check';
                        $number_2 = $row['allowed_photos'];
                        if($number_2== -1){
                            $number_2 = 'Unlimited';
                        }
                    }
                    if($row['allowed_videos']== 0 ){
                        $symbol_3 = 'fas fa-times';
                        $number_3 ='No';
                    }else{
                        $symbol_3 = 'fas fa-check';
                        $number_3 = $row['allowed_videos'];
                        if($number_3== -1){
                            $number_3 = 'Unlimited';
                        }
                    }

                  ?>
                <div class="col-lg-4 mb_30">
                    <div class="card mb-5 mb-lg-0">
                        <div class="card-body">
                            <h2 class="card-title"><?php echo $row['name'];?></h2>
                            <h3 class="card-price">$<?php echo $row['price'];?></h3>
                            <h4 class="card-day">(<?php echo $row['allowed_days'];?> Days)</h4>
                            <hr />
                            <ul class="fa-ul">
                                <li>
                                    <span class="fa-li"><i class="fas fa-check"></i></span>
                                    <?php if($row['allowed_properties']==-1):?>
                                        Unlimited
                                    <?php else: ?>
                                    <?php echo $row['allowed_properties'];?>
                                    <?php endif;?>
                                    Properties Allowed
                                </li>
                                <li>
                                    <span class="fa-li"><i class="<?php echo $symbol_1;?>"></i></span>
                                    <?php echo $number_1?> Featured Property
                                </li>
                                <li>
                                    <span class="fa-li"><i class="<?php echo $symbol_2;?>"></i></span><?php echo $number_2?>  Photos per Property
                                </li>
                                <li>
                                    <span class="fa-li"><i class="<?php echo $symbol_3;?>"></i></span><?php echo $number_3?>  Videos per Property
                                </li>
                            </ul>
                            <div class="buy">
                                <a href="<?php echo BASE_URL;?>agent-payment.php" class="btn btn-primary">
                                    Choose Plan
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                  <?php
                }
                ?>
                
            </div>
        </div>
    </div>



<?php include 'footer.php'; ?>
