<?php 

require_once("resources/config.php");
include(TEMPLATE_FRONT . DS . "header.php");

?>

<div class="container">

  <div class="row">

    <h1 class="text-center bg-warning">
      <?php       
        display_message();            
      ?>
    </h1>

    <h1>Checkout</h1>

    <!-- paypal stuff -->
    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post"> 
      <input type="hidden" name="cmd" value="_cart"> 
      <input type="hidden" name="business" value="sb-zyvu615153026@business.example.com"> 
      <input type="hidden" name="currency_code" value="BRL"> 
      <input type="hidden" name="upload" value="1"> 
      <!-- emd paypal stuff -->

      <table class="table table-striped">

        <thead>
          <tr>
           <th>Product</th>
           <th>Image</th>
           <th>Price</th>
           <th>Quantity</th>
           <th>Sub-total</th>
           <th>Actions</th>           
         </tr>

       </thead>

       <tbody>
         <?php cart() ?>
        </tbody>

      </table>

      <!-- shows paypal button only if there is an item on cart at least -->
      <?php if (total_itens_cart() > 0): ?>
        <input type="image" name="upload" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" alt="PayPal - The safer, easier way to pay online">                
      <?php endif ?>





    </form>



    <!--  ***********CART TOTALS*************-->
    <div class="col-xs-4 pull-right ">
      <h2>Cart Totals</h2>

      <table class="table table-bordered" cellspacing="0">

        <tbody>

          <tr class="cart-subtotal">
            <th>Items:</th>
            <td>
              <span class="amount"><?= total_itens_cart() ?></span>
            </td>
          </tr>
          <tr class="shipping">
            <th>Shipping and Handling</th>
            <td>Free Shipping</td>
          </tr>

          <tr class="order-total">
            <th>Order Total</th>
            <td><strong><span class="amount">$ <?= total_order_cart() ?></span></strong> </td>
          </tr>

        </tbody>

      </table>

    </div><!-- CART TOTALS-->

  </div><!--Main Content-->

<hr>

<?php include(TEMPLATE_FRONT . DS . "footer.php") ?>