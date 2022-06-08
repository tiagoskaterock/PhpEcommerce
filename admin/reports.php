<div id="page-wrapper">

  <div class="container-fluid">

    <div class="col-md-12">
      <div class="row">
        <h1 class="page-header">All Reports</h1>
        <?php info_message() ?>
      </div>

      <div class="row">

        <table class="table table-hover">

          <thead>
            <tr>
             <th>ID</th>
             <th>Order ID</th>
             <th>Product ID</th>
             <th>Title</th>
             <th>Price</th>
             <th>Quantity</th>
             <th>Currency</th>
           </tr>
          </thead>

           <tbody>

            <?php $reports = get_all_reports() ?>

            <?php foreach ($reports as $report): ?>
              <tr>
                <td><?= $report['id'] ?></td>
                <td><?= $report['order_id'] ?></td>
                <td><?= $report['product_id'] ?></td>
                <td><?= $report['product_title'] ?></td>
                <td>$ <?= $report['product_price'] ?></td>
                <td><?= $report['product_quantity'] ?></td>                
                <form action="" method="post">
                  <td>
                    <button class="btn btn-sm btn-danger" type="submit" name="delete" value="<?= $report['id'] ?>">Delete</button>
                  </td>
                </form>
                    
              </tr>                          
            <?php endforeach ?>

          </tbody>

        </table>

      </div><!-- end row -->

    </div><!-- end col-md-12 -->

  </div> <!-- end container-fluid -->

</div><!-- end page-wrapper -->

<?php 

delete_report();