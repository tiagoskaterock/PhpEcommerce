<?php require_once("resources/templates/front/header.php") ?>

<div class="container">
  <div class="row">
    <div class="col-lg-12 text-center">
      <h2 class="section-heading">Contact Us</h2>
      <h3 class="section-subheading text-muted"></h3>
    </div>
  </div>



  <div class="row">
    <div class="col-lg-12">



      <form name="sentMessage" id="contactForm" method="post" action="">
        <div class="row">
          <div class="col-md-6">



            <div class="form-group">
              <input type="text" class="form-control" placeholder="Your Name *" id="name" name="name" required data-validation-required-message="Please enter your name." title="Put the nome">
              <p class="help-block text-danger"></p>
            </div>



            <div class="form-group">
              <input type="email" class="form-control" placeholder="Your Email *" id="email" name="email" required data-validation-required-message="Please enter your email address." title="Put the email">
              <p class="help-block text-danger"></p>
            </div>



            <div class="form-group">
              <input type="text" class="form-control" placeholder="Subject *" id="subject" name="subject" required data-validation-required-message="Please enter the subjet of the message subject." title="Put the subject">
              <p class="help-block text-danger"></p>
            </div>



          </div>



          <div class="col-md-6">
            <div class="form-group">
              <textarea class="form-control" placeholder="Your Message *" id="message" name="message" required data-validation-required-message="Please enter a message." title="Put the message"></textarea>
              <p class="help-block text-danger"></p>
            </div>
          </div>



          <div class="clearfix"></div>
          <div class="col-lg-12 text-center">
            <div id="success"></div>
            <button type="submit" name="submit" class="btn btn-xl">Send Message</button>
          </div>
        </div>
      </form>

      <?php send_message() ?>




    </div>
  </div>




</div>

</div>

<?php footer_front() ?>

