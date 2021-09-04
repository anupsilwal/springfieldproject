
<?php 
   // if(session_id() == '' || !isset($_SESSION)) {
   //  session_start();
   //  }
   //  if (isset($_SESSION['USER_LOGIN'])) {
   //      header('location:index.php');
   //  }
?> 

<?php 
require('top.php');
?>

<section class="htc__contact__area bg__secondary pb--50">
    <div class="container">
    	<div class="row">
        <div class="col-md-3 col-lg-3"></div>  
		<div class="col-md-6">
			<div class="contact-form-wrap mt--60">
				<div class="col-xs-12">
						<div class="contact-title text-center" style="padding-bottom: 10px;">
							<img src="media/product/log.png" alt="logo" class="img-fluid" style="max-height: 120px;">
						</div>
					</div>
				<div class="col-xs-12 pt--20">
					<div class="bg__white md">
					<h2 class="text-center mb--10 pt--20">Sign Up</h2>
					<form id="register-form" method="post" style="padding: 30px 50px 20px 50px;">
						<div class="single-contact-form">
							<div class="contact-box name">
								<input type="text" name="name" id="name" placeholder="Your Name*" style="width:100%">
							</div>
							<span class="field_error" id="name_error"></span>
						</div>
						<div class="single-contact-form">
							<div class="contact-box name">
								<input type="text" name="email" id="email" placeholder="Your Email*" style="width:100%">
							</div>
							<span class="field_error" id="email_error"></span>
						</div>
						<div class="single-contact-form">
							<div class="contact-box name">
								<input type="text" name="mobile" id="mobile" placeholder="Your Mobile*" style="width:100%">
							</div>
							<span class="field_error" id="mobile_error"></span>
						</div>
						<div class="single-contact-form">
							<div class="contact-box name">
								<input type="password" name="password" id="password" placeholder="Your Password*" style="width:100%">
							</div>
							<span class="field_error" id="password_error"></span>
						</div>

						<div style="margin-top: 10px;">
							Have account? <a href="/nocap/login.php" style="float: right;">Log In</a>
						</div>

									
						<div class="contact-btn">
							<button type="button" class="fv-btn" onclick="user_register()">Sign Up</button>
						</div>
					</form>
					<div class="form-output register_msg">
						<p class="form-messege field_error"></p>
					</div>
					<div style="margin-top: 10px; padding: 20px; border-radius: 0px 0px 5px 5px;" class="bg__green text--white text-center">
						I have an account? -- <a href="/nocap/login.php" class="btn" style="color: #000; background: #fff;">Sign In Now</a>
					</div>
				</div>
				</div>
			</div> 
					
        </div>
        <div class="col-md-3 col-lg-3"></div>
    </div>
	</div>
</section>
<?php require('footer.php')?>        