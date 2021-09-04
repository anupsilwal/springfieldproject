


<?php 
require('top.php');
?>
<!-- Start Contact Area -->
<section class="htc__contact__area bg__secondary pb--50">
    <div class="container">
        <div class="row">
        	<div class="col-md-3 col-lg-3"></div>
			<div class="col-md-6" >
				<div class="contact-form-wrap mt--60">
					<div class="col-xs-12">
						<div class="contact-title text-center" style="padding-bottom: 10px;">
							<img src="media/product/log.png" alt="logo" class="img-fluid" style="max-height: 120px;">
						</div>
					</div>
					<div class="col-xs-12 pt--20">
						<div class="bg__white md">
						<h2 class="text-center mb--10 pt--20">Sign In</h2>
						<form id="login-form" method="post" style="padding: 30px 50px 10px 50px;">
							<div class="single-contact-form">
								<div class="contact-box name">
									<input type="text" name="login_email" id="login_email" placeholder="Your Email*" style="width:100%">
								</div>
								<span class="field_error" id="login_email_error"></span>
							</div>
							<div class="single-contact-form">
								<div class="contact-box name">
									<input type="password" name="login_password" id="login_password" placeholder="Your Password*" style="width:100%">
								</div>
								<span class="field_error" id="login_password_error"></span>
							</div>
							<div class="contact-btn">
								<button type="button" class="fv-btn" onclick="user_login()">Sign In Now</button>
							</div>
							<div class="mtb--30 text-center">
								<a href="forgot_password.php" style="font-size:17px;">Forgot Password?</a>
							</div>	
						</form>
						
						<div class="form-output login_msg">
							<p class="form-messege field_error"></p>
						</div>
						<div style="margin-top: 10px; padding: 20px; border-radius: 0px 0px 5px 5px;" class="bg__green text--white text-center">
								Don't have an account? -- <a href="/nocap/register.php" class="btn" style="color: #000; background: #fff;">Sign Up</a>
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