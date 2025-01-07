<!DOCTYPE html>
<?php
	session_start();
?>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/bengkel.css">
	<script src="../js/uikit.min.js"></script>
	<script src="../js/uikit-icons.min.js"></script>
	<title>Bengkel Ku</title>
</head>

<body>

<nav class="uk-navbar-container" style="background-color:rgb(30,135,240);" uk-navbar>
    <div class="uk-navbar-left">
        <ul class="uk-navbar-nav">
            <li class="uk-active"><a href="#" style="color:white; padding:30px; font-size: 40px;font-family:rockwell;">Bengkel Ku</a></li></li>
            <?php
                if(empty($_SESSION["username_adm"])){
                }elseif(isset($_SESSION["username_adm"])){
                    echo "<li><a href='admin_jadwal_reservasi.php' style='color:white'>Jadwal Reservasi</a></li>";
                    echo "<li><a href='admin_block_user.php' style='color:white;'>Block User</a></li>";
                }
            ?>
        </ul>
    </div>
    
    <div class="uk-navbar-right">
        <ul class="uk-navbar-nav">
            <li>
                <?php 
                    if(empty($_SESSION["username_adm"])){
                        echo "<a href='#'' class='uk-icon-link uk-margin-small-left' uk-icon='user' style='color:white; padding-right:80px;'>Login</a>";
                    }elseif(isset($_SESSION["username_adm"])){
                        $akun = $_SESSION["username_adm"];
                        echo "<a href='#' class='uk-icon-link uk-margin-small-left' uk-icon='user' style='color:white; padding-right:80px;'>Hai, $akun</a>";
                    }
                ?>
                <div class="uk-navbar-dropdown">
                    <ul class="uk-nav uk-navbar-dropdown-nav">
                        <?php
                            if(empty($_SESSION["username_adm"])){
                            }elseif(isset($_SESSION["username_adm"])){
                                echo "<li class='uk-active'><a href='action/act_logout.php'>Keluar</a></li>";

                            }
                        ?>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</nav>


<div class="uk-container" style="padding-top:25px;">
		<?php
			include "action/act_alert_admin.php";
		?>
		<h2>Login Pekerja</h2>
		<div class="uk-container">
			<form class="uk-form-stacked" action="action/act_masuk_admin.php" method="post" autocomplete="off">
				<div class="uk-margin">
					<label class="uk-form-label" for="form-stacked-text">Username</label>
					<div class="uk-form-controls">
						<input class="uk-input" id="form-stacked-text" type="text" name="username_adm" placeholder="Masukkan Username" required>
					</div>
				</div>
			
				<div class="uk-margin">
					<label class="uk-form-label" for="form-stacked-text">Password</label>
					<div class="uk-form-controls">
						<input class="uk-input" id="form-stacked-text" type="password" name="password_adm" placeholder="Masukkan Password" required>
					</div>
				</div>
				
				<button class="uk-button uk-button-primary" type="submit" name="button">Masuk</button>
			</form>
		</div>
	</div>
</body>

</html>