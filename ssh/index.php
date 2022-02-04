<?php
/* Site Data */
$site_name        = "BLACK VPS";
$site_description = "Premium VPN/SSH/SSL Accounts Fast And Reliable Servers";
$site_template    = "flatly"; // (flatly, darkly, sketchy, lumen, materia)
$site_ip_address = "xxxxxxxxx"; // set site ip
$site_paypal = "https://paypal.me/badboy897"; // set site paypal donate link
$site_contact = "https://t.me/badboy897"; // set site contact us link
$daily_limit_user = "90"; // set daily limit


/* Server Data */
/* Format: Server_Name, IP_Address, Root_Pass, Account_Validity */
/* Example: 1=>array(1=>"DopeKid Server 1","123.456.789","DopeKid","5"), */

$server_lists_array=array(
			1=>array(1=>"BlackVPN","xxxxxxxxx","saC090988lanun","3"),
	);			


/* Service Variables */
$port_ssh= '22, 143, 90'; 		                // SSH Ports
$port_dropbear= '109, 110, 442'; 	       	// Dropbear Ports
$port_ssl= '444';                               // SSL Ports
$port_squid= '3128, 8080, 8000, 3128'; 	       	// Squid Ports
$ovpn_client= ''.$hosts.'/black.ovpn';        // OpenVPN Client Config

/* Dont Edit Anything After This Line*/
for ($row = 1; $row < 101; $row++)
	{
	if ( $_POST['server'] == $server_lists_array[$row][1] )
		{
		$hosts= $server_lists_array[$row][2];
		$root_pass= $server_lists_array[$row][3];
		$expiration= $server_lists_array[$row][4];
		break;
		}
	}

$error = false;
if (isset($_POST['user'])) 
	{
		$username = trim($_POST['user']);
		$username = strip_tags($username);
		$username = htmlspecialchars($username);
		$password1 = trim($_POST['password']);
		$password1 = strip_tags($password1);
		$password1 = htmlspecialchars($password1);
		
		$nDays = $expiration;
		$datess = date('m/d/y', strtotime('+'.$nDays.' days'));
		$password = escapeshellarg( crypt($password1) );
		
		if (empty($username)) 
			{
				$error = true;
				$nameError = "Please Enter A Username";
			}
		else if (strlen($username) < 3) 
			{
				$error = true;
				$nameError = "Name Must Have Atleast 3 Characters.";
			}
		if (empty($password1))
			{
				$error = true;
				$passError = "Please Enter A Password.";
			} 
		else if(strlen($password1) < 3) 
			{
				$error = true;
				$passError = "Password Must Have Atleast 3 Characters.";
			}
		if($username == $password1)
			{
				$error = true;
				$ConfirmError = "Username and Password Should Not Be The Same ";
			} 
		if( !$error) 
			{
				date_default_timezone_set('UTC');
				date_default_timezone_set("Asia/Kuala_Lumpur"); 
				$my_date = date("Y-m-d H:i:s"); 
				$connection = ssh2_connect($hosts, 22);
				if (ssh2_auth_password($connection, 'root', $root_pass)) 
					{
						$check_user = ssh2_exec($connection, "id -u $username");
						$check_user_error = ssh2_fetch_stream($check_user, SSH2_STREAM_STDERR);
  						stream_set_blocking($check_user_error, true);
						stream_set_blocking($check_user, true);
						$stream_check_user_error = stream_get_contents($check_user_error);
   						$stream_check_user = stream_get_contents($check_user);
   						if ( !empty($stream_check_user))
   							{
   								$ServerError = "Username Already Taken";
   							}
   						elseif ( !empty($stream_check_user_error))
   							{
   								$check_daily_limit = ssh2_exec($connection, "wc -l < /home/vps/public_html/daily_user_limit.txt");
								$check_daily_limit_error = ssh2_fetch_stream($check_user, SSH2_STREAM_STDERR);
   								stream_set_blocking($check_daily_limit_error, true);
								stream_set_blocking($check_daily_limit, true);
								$stream_check_daily_limit_error = stream_get_contents($check_daily_limit_error);
   								$stream_check_daily_limit = stream_get_contents($check_daily_limit);
								if ($stream_check_daily_limit >= $daily_limit_user)
									{
										$ServerError = "Server Full, Try Again Tomorrow";
									}
								else
									{
										$show = true;	 
										ssh2_exec($connection, "useradd $username -m -p $password -e $datess -d  /tmp/$username -s /bin/false");
										ssh2_exec($connection, 'echo "====================" >> /home/vps/public_html/daily_user_limit.txt');
									}   								
   							}
					} 
				else 
					{
						die('Connection Failed...');
					}	
			}   
	} 
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />  
<title><?php echo $site_name;?> | <?php echo $site_description;?></title>
<meta name="description" content="<?php echo $site_description;?>"/>
<meta property="og:type" content="website" />
<meta property="og:image" content="https://raw.githubusercontent.com/dopekid30/-generate-sa-idnumbers/master/20201002_222944.jpg" />
   <script language='JavaScript'>
        var txt = '   ' + document.title + '   '
        var speed = 400;
        var refresh = null;
        function site_name() 
			{
            		document.title = txt;
            		txt = txt.substring(1, txt.length) + txt.charAt(0);
            		refresh = setTimeout("site_name()", speed);
        	}
        site_name();     
    </script>
<link rel="shortcut icon" type="image/x-icon" href="https://raw.githubusercontent.com/lanundarat87/xxx/main/Res/Panel/logo.ico">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.1/<?php echo $site_template;?>/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
<a class="navbar-brand" href="/">
  <img src="https://raw.githubusercontent.com/lanundarat87/xxx/main/Res/Panel/logo.ico" width="30" height="30" class="d-inline-block align-top" alt="">
  <?php echo $site_name;?>
</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
<li class="nav-item active">
<a class="nav-link" href="http://<?php echo $site_ip_address;?>:89/">OpenVPN Monitor <span class="sr-only">(current)</span></a>
</li>
<li class="nav-item active">
<a class="nav-link" href="<?php echo $site_paypal;?>"target="_blank">Paypal Donate <span class="sr-only">(current)</span></a>
</li>
<li class="nav-item active">
<a class="nav-link" href="<?php echo $site_contact;?>"target="_blank">Contact Us <span class="sr-only">(current)</span></a>
</li>
</nav>		
</header>
	<div align="center">
      <img src="https://raw.githubusercontent.com/dopekid30/-generate-sa-idnumbers/master/logo.gif" alt="" height="200" width"200"/>
    	<div class="col-md-4" align="center">
			<form method="post" align="center" class="softether-create">
						<div class="form-group">												
							<?php
								if($show == true) 
									{
										echo '<div class="card alert-danger">';
										echo '<table class="table-danger">';
										echo '<tr>'; echo '<td> </td>'; echo '<td> </td>'; echo '</tr>';			
										echo '<tr>'; echo '<td>Host</td>'; echo '<td>'; echo $hosts; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>Username</td>'; echo '<td>'; echo $username; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>Password</td>'; echo '<td>'; echo $password1; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>Server</td>'; echo '<td>'; echo $_POST['server']; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>SSH Port</td>'; echo '<td>'; echo $port_ssh; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>Dropbear Port</td>'; echo '<td>'; echo $port_dropbear; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>SSL Port</td>'; echo '<td>'; echo $port_ssl; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>Squid Port</td>'; echo '<td>'; echo $port_squid; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>OpenVPN Config</td>'; echo '<td>';echo '<a href="http://';echo $hosts; echo "/"; echo "black.ovpn"; echo'">download config</a>'; echo '</td>'; echo '</tr>';
										echo '<tr>'; echo '<td>Expiration Date</td>'; echo '<td>'; echo $datess; echo '</td>'; echo '</tr>';																							
										echo '<tr>'; echo '<td> </td>'; echo '<td> </td>'; echo '</tr>';
										echo '</table>';
										echo '</div>';
									}										
							?>
						</div>
						<div class="form-group">
							<div class="alert-danger">
								<span class="text-light"><?php echo $ServerError; ?></span>
							</div>					
							<div class="alert-danger">
								<span class="text-light"><?php echo $nameError; ?></span>
							</div>
							<div class="alert-danger">
								<span class="text-light"><?php echo $passError; ?></span>
							</div>
							<div class="alert-danger">
								<span class="text-light"><?php echo $ConfirmError; ?></span>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">									
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-globe" style="color:red;"></i></span>
								</div>
								<select class="custom-select" name="server" required>
									<option disabled selected value>Select Server</option> 
										<optgroup label="<?php echo $site_name;?>">
											<?php
											for ($row = 1; $row < 101; $row++)
											{
												if ( !empty($server_lists_array[$row][1]))
												{
													echo '<option>'; echo $server_lists_array[$row][1]; echo '</option>';
												}
												else
												{
													break;
												}														
											}
											?>
										</optgroup>														
								</select> 
							</div>
						</div>															
						<div class="form-group">								
							<div class="input-group">									
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-user-circle" style="color:red;"></i></span>
								</div>
									<input type="text" class="form-control" id="username" placeholder="Username" name="user" autocomplete="off" >
							</div>
						</div>
						<div class="form-group">								
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-key" style="color:red;"></i></span>
								</div>
									<input type="text" class="form-control" id="password" placeholder="Password" name="password" autocomplete="off"  >
							</div>						
						</div>						
										
						<div class="form-group ">
							<button type="submit" id="button" class="btn btn-danger btn-block btn-action">CREATE ACCOUNT</button>
						</div>
					</form>					
				</div>
			</div>
		</div>
	</div>
</body>
</html>
