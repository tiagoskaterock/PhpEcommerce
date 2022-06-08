<div id="page-wrapper">

  <div class="container-fluid">

    <div class="col-md-12">
      <div class="row">
        <h1 class="page-header">All Orders</h1>
        <?php info_message() ?>
      </div>

      <div class="row">

        <table class="table table-hover">

          <thead>
            <tr>
             <th>ID</th>
             <th>Amount</th>
             <th>Transaction</th>
             <th>Status</th>
             <th>Currency</th>
           </tr>
          </thead>

           <tbody>

            <?php $orders = get_all_orders() ?>

            <?php foreach ($orders as $order): ?>
              <tr>
                <td><?= $order['id'] ?></td>
                <td><?= $order['amount'] ?></td>
                <td><?= $order['transaction'] ?></td>
                <td><?= $order['status'] ?></td>
                <td><?= $order['currency'] ?></td>
                <form action="" method="post">
                  <td>
                    <button class="btn btn-sm btn-danger" type="submit" name="delete" value="<?= $order['id'] ?>">Delete</button>
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

delete_order();