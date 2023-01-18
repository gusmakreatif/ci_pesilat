<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="description" content="Customized bootstrap login forms with multiple variants. Easy to customize.">
	<meta name="keywords" content="Bootstrap Modal, Login Form, Modal Login, Registration Form, Form, Bootstrap, Login, Registration">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="assets/logo.png"/>
	<title>Bootstrap Modal Login</title>


	<!-- font awesome v5.5.0 free version -->
	<link href="assets/auth/css/all.min.css" rel="stylesheet">
	<!-- bootstrap version v4.0.0 -->
	<link href="assets/auth/css/bootstrap.min.css" rel="stylesheet">
	<!-- custom css -->
	<link href="assets/auth/css/style.css" rel="stylesheet">
</head>
<body>
	<div class="main-container">
		<h3 class="text-center mt-4">Halaman Login Official</h3>
		
		<div class="row text-center mt-12">
			<div class="col-sm-12 ">
				<div class="button-card">
					<p class="text-muted"><strong class="text-danger text-uppercase">Silahkan Lakukan Login</strong> Click the button to preview</p>
					<div class="action-buttons mb-3 mt-2">
						<!-- action button for modal style 1 start -->
						<a href="#loginModal1" data-toggle="modal" class="btn btn-theme btn-primary text-white"> Login</a>
						<a href="#registerModal1" data-toggle="modal" class="btn btn-theme btn-success text-white">Register</a>
						<!-- action button for modal style 1 end -->
					</div>
					<!-- <img src="assets/demo/style-1-demo-dark.jpg"> -->
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti maxime animi tempore eos deleniti! Minima, iure cumque dolores dicta mollitia ad delectus perspiciatis, est illum numquam fuga facilis, in harum?</p>
				</div>
			</div>
		</div>
	</div>


<!--modal style 1 start -->
	<!-- login modal 1 -->
	<div id="loginModal1" class="modal-style-1 dark modal ">
		<div class="modal-dialog modal-login">
			<div class="modal-content">
				<div class="modal-header p-0 mb-3 mt-3">				
					<h4 class="modal-title">login</h4>
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<!-- dont forget to add action and action method  -->
					<form action="" method="">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
								<input type="email" class="form-control" name="email" placeholder="Enter email address" required="required">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input type="password" class="form-control" name="password" placeholder="Enter password" required="required" autocomplete="on">
							</div>
						</div>
						<div class="row pl-1 pr-1">
                            <div class="col text-left">
                                <label class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="item_checkbox" name="item_checkbox" value="option1">
                                    <span class="custom-control-label">&nbsp;Remember Me</span>
                                </label>
                            </div>
                            <div class="col text-right hint-text pt-0">
                                <a href="" class="text-danger">Forgot Password?</a>
                            </div>
                        </div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary btn-signin">login</button>
							
						</div>
						<p class="hint-text mt-3">or login with</p>
						<!-- social login area -->
						<div class="social-login text-center">
							<a class=" btn-facebook  text-uppercase" href="redirect/facebook"><i class="fab fa-facebook-f mr-2 ml-2"></i> </a>
							<a class=" btn-google  text-uppercase" href="redirect/google"><i class="fab fa-google mr-2 ml-2"></i></a>
							<a class=" btn-twitter  text-uppercase" href="redirect/twitter"><i class="fab fa-twitter mr-2 ml-2"></i></a>
						</div>
					</form>
				</div>
				<div class="text-center mb-3">Don't have an account? <a class="register" href="#registerModal1" data-dismiss="modal" data-toggle="modal">Register</a></div>
			</div>
		</div>
	</div>  

	<!-- register modal 1 -->
	<div id="registerModal1" class="modal-style-1 dark modal ">
		<div class="modal-dialog modal-login">
			<div class="modal-content">
				<div class="modal-header p-0 mb-3 mt-3">				
					<h4 class="modal-title">Register</h4>
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<!-- dont forget to add action and action method  -->
					<form action="" method="">
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control" name="name" placeholder="Enter your name" required="required">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
								<input type="email" class="form-control" name="email" placeholder="Enter email address" required="required">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input type="password" class="form-control" name="password" placeholder="Enter password" required="required" autocomplete="on">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-eye-slash"></i></span>
								<input type="password" class="form-control" name="password_confirmation" placeholder="Retype password" required="required" autocomplete="on">
							</div>
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary btn-signin">Register</button>
							
						</div>
						<p class="hint-text mt-3">or register with</p>
						<!-- social login area -->
						<div class="social-login text-center">
							<a class=" btn-facebook  text-uppercase" href="redirect/facebook"><i class="fab fa-facebook-f mr-2 ml-2"></i> </a>
							<a class=" btn-google  text-uppercase" href="redirect/google"><i class="fab fa-google mr-2 ml-2"></i></a>
							<a class=" btn-twitter  text-uppercase" href="redirect/twitter"><i class="fab fa-twitter mr-2 ml-2"></i></a>
						</div>
					</form>
				</div>
				<div class="text-center mb-3">Already have an account? <a class="login" href="#loginModal1" data-dismiss="modal" data-toggle="modal">Login</a></div>
			</div>
		</div>
	</div> 
<!--modal style 1 end -->

<p class="m-0 p-0 text-center text-muted text-12 ">Version 1.0.0  &copy; <a href="https://rakibul.dev">Md. Rakibul Islam</a></p>


	<!-- include scripts here -->

	<!-- jQuery v3.5.0 -->
	<script src="assets/auth/js/jquery-3.5.1.min.js" ></script>
	<!-- bootstrap js -->
	<script src="assets/auth/js/bootstrap.min.js" ></script>
    <script>
        $(document).ready(function(){
             // Ketika tombol tambah data ditekan
        $('#btn_tambahdata').click(function(e) {
            $.ajax({
                url: "<?= base_url('/register') ?>",
                dataType: "json",
                beforeSend: function() {
                    $('.view-data').html('<i class="spinner-border"></i>');
                },
                success: function(response) {
                    $('.view-data').html(response.data);
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    $('#error_message').html(
                        `<strong>${xhr.status + ' ' + thrownError}</strong>
                    <br>
                    <div class="card mt-2">
                        <div class="card-body">
                            ${xhr.responseText}
                        </div>
                    </div>`
                    );
                    $('#error_modal').modal('show');
                    $('.view-data').html(
                        `<div style="color:black;" class="card bg-light">
                            <div class="card-body">
                                <a href="#" id="btn_refreshdata"><i class="fas fa-sync"></i> Refresh</a>
                                <hr>
                                Terjadi Kesalahan (<strong>${xhr.status + ' ' + thrownError}</strong>)
                            </div>
                        </div>`
                    );
                }
            })
        })
        });
    </script>
</body>
</html>
