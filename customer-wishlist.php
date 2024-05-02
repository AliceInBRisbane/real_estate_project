<?php include 'header.php'; ?>

<?php

if(!isset($_SESSION['customer'])) {
    header('location:'.BASE_URL.' customer-login.php');
    exit;
}
?>
<div class="page-top" style="background-image: url('<?php echo BASE_URL;?>uploads/banner.jpg')">
        <div class="bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Wishlist</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="page-content user-panel">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <?php include 'customer-sidebar.php'; ?>
                </div>
                <div class="col-lg-9 col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>SL</th>
                                    <th>Name</th>
                                    <th>Company</th>
                                    <th>Price</th>
                                    <th class="w-100">Detail</th>
                                </tr>
                                <?php 
                                $i=0;
                                $statement = $pdo->prepare("SELECT w.id as wishlist_id, w.customer_id, w.property_id,
                                                             p.id as p_id,p.name as p_name,p.price as p_price,p.slug as p_slug
                                                            FROM wishlists w
                                                            JOIN properties p
                                                            ON w.property_id=p.id
                                                            WHERE w.customer_id=?");
                                $statement->execute([$_SESSION['customer']['id']]);
                                $result = $statement->fetchAll();
                                foreach($result as $row) {
                                    $i++;
                                    ?>
                                    <tr>
                                    <td><?php echo $i;?></td>
                                    <td><?php echo $row['p_name'];?></td>
                                    <td>$<?php echo $row['p_price'];?></td>
                                    <td>
                                        <a href="<?php echo BASE_URL;?>property/<?php echo $row['p_id'];?>/<?php echo $row['p_slug'];?>" class="btn btn-primary btn-sm text-white"><i class="fas fa-eye"></i></a>
                                        <a href="<?php echo BASE_URL; ?>customer-wishlist-delete.php?id=<?php echo $row['wishlist_id']; ?>" class="btn btn-danger btn-sm" onClick="return confirm('Are you sure?');"><i class="fas fa-trash-alt"></i></a>
                                    </td>
                                    </td>
                                </tr>

                                    <?php
                                }

                                ?>
                                
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php include 'footer.php'; ?>