<?php
/* Site Data */
/* invite_code_master is the Invite Code that the VIP Users will be using on the site */
/* free_user_exp is the active days for Free Users */
/* vip_user_exp is the active days for VIP Users */

$site_name        = "EZ Connect";
$site_description = "Provider of Quality SSH, SSL, VPN Accounts";
$site_template    = "darkly";
$invite_code_master = "30DaysInviteCode";
$free_user_exp = "3";
$expiration2 = "30";


/* Server Data */
/* Format: Server_Name, IP_Address, Root_Pass, User_Type */
/* Example_1: 1=>array(1=>"LadyClare Server 1","123.456.789","LadyClare","VIP"), */

$server_lists_array=array(
			1=>array(1=>"SGDO 1","206.189.42.122","wang22wang","VIP"),
       2=>array(1=>"SGDO 2","128.199.207.660","wang22wang","VIP"),
	);			



/* Service Ports Variables */
	
$port_ssh= '22';					// SSH Ports
$port_dropbear= '442, 109';				// Dropbear Ports
$port_ssl= '443';							// SSL Ports
$port_squid= '3128, 8080, 8000';			// Squid Ports
$ovpn_client= ''.$hosts.'/client.ovpn';		// OpenVPN Client Config



/* Dont Edit Any Part Of The Code If You Dont Know How It Works*/
$error = false;
if (isset($_POST['user'])) 
	{
		$username = trim($_POST['user']);
		$username = strip_tags($username);
		$username = htmlspecialchars($username);
		$password1 = trim($_POST['password']);
		$password1 = strip_tags($password1);
		$password1 = htmlspecialchars($password1);
		$invite_code = $_POST['invite'];
		$invite_code = strip_tags($invite_code);
		$invite_code = htmlspecialchars($invite_code);
		
		
		
		if (empty($username)) 
			{
				$error = true;
				$nameError = "Please Input A Username.";
			}
		else if (strlen($username) < 3) 
			{
				$error = true;
				$nameError = "Username Must Have Atleat 3 Characters.";
			}
		if (empty($password1))
			{
				$error = true;
				$passError = "Please Input Password.";
			} 
		else if(strlen($password1) < 3) 
			{
				$error = true;
				$passError = "Password Must Have Atleast 3 Characters.";
			}
		for ($row = 1; $row < 101; $row++)
			{
			if ( $_POST['server'] == $server_lists_array[$row][1] )
				{
				if ( $server_lists_array[$row][4] == "VIP" )
					{
						if ( !empty($invite_code))
							{
								if ( $invite_code != $invite_code_master )
									{
										$error = true;
										$inviteError = "Invite Code Is Incorrect";
									}
								else
									{
										$hosts= $server_lists_array[$row][2];
										$root_pass= $server_lists_array[$row][3];
										
										break;
									}
							}
						else
							{
								$error = true;
								$inviteError = "Please Input Invite Code";
							}				
					}
				elseif ( $server_lists_array[$row][4] == "Free" )
					{
						$hosts= $server_lists_array[$row][2];
						$root_pass= $server_lists_array[$row][3];
						
						break;
					}
				}
			}
		if ( $_POST['user_type'] == "VIP User")
			{
				if ( empty($invite_code))
					{
						$error = true;
						$inviteError = "Please Input Invite Code";
					}
				else
					{
						$expiration= $vip_user_exp;
					}
				
			}
		elseif ( $_POST['user_type'] == "Free User")
			{
				if ( empty($invite_code))
				{
					$expiration= $free_user_exp;
				}
				else
				{
					$error = true;
					$inviteError = "Invite Code If For VIP Users Only";
				}
			}

		$password1 = $_POST['password'];
		$nDays = $expiration2;
		$datess = date('m/d/y', strtotime('+'.$nDays.' days'));
		$password = escapeshellarg( crypt($password1) );
		if( !$error ) 
			{
				date_default_timezone_set('UTC');
				date_default_timezone_set("Asia/Manila"); 
				$my_date = date("Y-m-d H:i:s"); 
				$connection = ssh2_connect($hosts, 22);
				if (ssh2_auth_password($connection, 'root', $root_pass)) 
					{
						$show = true;	 
						ssh2_exec($connection, "useradd $username -m -p $password -e $datess -d  /tmp/$username -s /bin/false");
						$succ = 'Added Succesfully';
						if ($res) 
							{
								$errTyp = "success";
								$errMSG = "Successfully registered, you may Check your credentials";
								$username = '';
								$password = '';
							} 
						else 
							{
								$errTyp = "danger";
								$errMSG = "Something went wrong, try again later..."; 
							} 
					} 
				else 
					{
						die('Connection Failed...');
					}	
			}   
	} 
?>







<html>
<head>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />  
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.1/cyborg/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<style type="text/css">
    .box{
        color: #fff;
        padding: 20px;
        display: none;
        margin-top: 20px;
    }
    .red{ background: #ff0000; }
    .green{ background: #228B22; }
    .blue{ background: #0000ff; }
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("select").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".box").not("." + optionValue).hide();
                $("." + optionValue).show();
            } else{
                $(".box").hide();
            }
        });
    }).change();
});
</script>


<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  padding: 10px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
.icon-background {
    color: #FFFFFF;
}

</style>


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">EZ Connect</a>
  <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse collapse" id="navbarColor02" style="">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/index.php">Home <span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
</nav>

<br>

<div align="center">

<span class="badge badge-primary">NO DDOS</span>
<span class="badge badge-secondary">NO HACKING</span>
<span class="badge badge-success">NO TORRENT</span>
<span class="badge badge-danger">NO CARDING</span>
<span class="badge badge-warning">NO ILLEGAL</span>
<span class="badge badge-info">100% FREE</span>
<span class="badge badge-light">100% UPTIME</span>
<span class="badge badge-dark">100% PROTECTION</span>
</div>

<center><iframe src="https://freesecure.timeanddate.com/clock/i6np8hk8/n145/fn6/fs12/fcf00/tct/pct/ftb/bas2/bat0/bacfff/pa8/tt0/tw1/th2/tb4" frameborder="0" width="156" height="44" allowTransparency="true"></iframe>

</center>




 <center><iframe data-aa='1133593' src='//acceptable.a-ads.com/1133593' scrolling='no' style='border:0px; padding:0; overflow:hidden' allowtransparency='true'></iframe></center>



<div align="center">
        	<div class="col-md-4" align="center">
				<div align="center">
    				

<div align="center" class="card-body">
							<form method="post" align="center" class="softether-create">
								<div class="form-group">	
										<?php
											if($show == true) 
												{
													echo '<div class="card border-danger">';
													echo '<table class="table-danger">';
													echo '<tr>'; echo '<td> </td>'; echo '<td> </td>'; echo '</tr>';	

		
echo '<tr>'; echo '<td>Server</td>'; echo '<td>'; echo $_POST['server']; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>Host</td>'; echo '<td>'; echo $hosts; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>Username</td>'; echo '<td>'; echo $username; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>Password</td>'; echo '<td>'; echo $password1; echo '</td>'; echo '</tr>';
											
													echo '<tr>'; echo '<td>SSH Port</td>'; echo '<td>'; echo $port_ssh; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>Dropbear Port</td>'; echo '<td>'; echo $port_dropbear; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>SSL Port</td>'; echo '<td>'; echo $port_ssl; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>Squid Port</td>'; echo '<td>'; echo $port_squid; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>OpenVPN Config</td>'; echo '<td>';echo '<a href="http://';echo $hosts; echo "/"; echo "client.ovpn"; echo'">download config</a>'; echo '</td>'; echo '</tr>';
													echo '<tr>'; echo '<td>Expiration Date</td>'; echo '<td>'; echo $datess; echo '</td>'; echo '</tr>';																							
													echo '<tr>'; echo '<td> </td>'; echo '<td> </td>'; echo '</tr>';
													echo '</table>';
													echo '</div>';
												}										
										?>
								</div>
								<div class="form-group">
									<span class="text-danger"><?php echo $nameError; ?></span>
								</div>
								<div class="form-group">
									<span class="text-danger"><?php echo $passError; ?></span>
								</div>
								<div class="form-group">
									<span class="text-danger"><?php echo $inviteError; ?></span>
								</div>

								<div class="form-group">
									<div class="input-group">									
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="fas fa-globe" style="color:red;"></i></span>
										</div>
										<select class="custom-select" name="server" required>
											<option disabled selected value>Select Server</option> 
												
													<?php
														for ($row = 1; $row < 101; $row++)
														{
															if (( $server_lists_array[$row][4] == VIP ))
															{
																echo '<option>';echo $server_lists_array[$row][1]; echo '</option>';
															}
															elseif ( $server_lists_array[$row][4] == Free )
															{
																continue;
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
								<div class="form-group">									
									<div class="input-group">									
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="fas fa-code" style="color:red;"></i></span>
										</div>
										<input type="text" class="form-control" id="confirm" placeholder="Invite Code Here" name="invite" autocomplete="off" >
									</div>
								</div>													
								<div class="form-group ">								
									<button type="submit" id="button" class="btn btn-outline-danger btn-block btn-action">CREATE ACCOUNT</button>

								</div>
							</form>
						</div>


					</div>
				</div>
			</div>
		</div>


</div>



<div class="row">
  <div align="center" class="column" style="background-color:#ffffff00;">
   
<span class="fa-stack fa-4x">
  <i class="fa fa-circle fa-stack-2x icon-background"></i>
  <i class="fas fa-user-shield fa-stack-1x style="color:red;"></i>
</span>
<h4>Privacy & Security</h4>
    <p>Get your identity hidden online, your IP Address will be masked with our server IP. Also your connection will be encrypted.</p>
  </div>
  <div align="center" class="column" style="background-color:#ffffff00;">

<span class="fa-stack fa-4x">
  <i class="fa fa-circle fa-stack-2x icon-background"></i>
  <i class="ico fa fa-unlock-alt fa-stack-1x style="color:red;"></i>
</span>
<h4>Bypass Cencorship</h4>
    <p>Bypass your school, government or your office internet cencorship. Unblock any site and enjoy Internet Freedom.</p>
  </div>
<div align="center" class="column" style="background-color:#ffffff00;">
<span class="fa-stack fa-4x">
  <i class="fa fa-circle fa-stack-2x icon-background"></i>
  <i class="ico fa fa-rocket fa-stack-1x style="color:red;"></i>
</span>

 <h4>Boost Internet Speed</h4>
    <p>Our service may boost your internet speed and make your connection stable (stable PING). This differ by country.</p>
  </div>
</div>



<center><iframe data-aa='1133593' src='//acceptable.a-ads.com/1133593' scrolling='no' style='border:0px; padding:0; overflow:hidden' allowtransparency='true'></iframe></center>

<style>
p {text-align:center;}

</style>

<p><strong>Donation Accepted. Any amount will help.</strong></p>

  <div align="center">
        <select>
            <option>DONATE OPTION</option>
            <option value="red">COINS.PH</option>
            <option value="green">GCASH</option>
        </select>
    </div>
    <div align="center" class="red box">You have selected <strong>Coins.ph.</strong> Donate to this number <br> 09667441328</div>
    <div align="center" class="green box">You have selected <strong>GCASH</strong> Donate to this number <br> 09667441328</div>


<style>
p {text-align:center;}

</style>

<p><strong>Thank you !</strong></p>


<div align="center">
    Made with <i class="fa fa-heart pulse"></i> by <a href="https://www.phcorner.net/members/357807/" target="_blank">Wang Zki</a>
</div>




 
<style>.fb-livechat,.fb-widget{display:none}.ctrlq.fb-button,.ctrlq.fb-close{position:fixed;right:24px;cursor:pointer}.ctrlq.fb-button{z-index:1;background:url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff;width:60px;height:60px;text-align:center;bottom:24px;border:0;outline:0;border-radius:60px;-webkit-border-radius:60px;-moz-border-radius:60px;-ms-border-radius:60px;-o-border-radius:60px;box-shadow:0 1px 6px rgba(0,0,0,.06),0 2px 32px rgba(0,0,0,.16);-webkit-transition:box-shadow .2s ease;background-size:80%;transition:all .2s ease-in-out}.ctrlq.fb-button:focus,.ctrlq.fb-button:hover{transform:scale(1.1);box-shadow:0 2px 8px rgba(0,0,0,.09),0 4px 40px rgba(0,0,0,.24)}.fb-widget{background:#fff;z-index:2;position:fixed;width:360px;height:435px;overflow:hidden;opacity:0;bottom:0;right:24px;border-radius:6px;-o-border-radius:6px;-webkit-border-radius:6px;box-shadow:0 5px 40px rgba(0,0,0,.16);-webkit-box-shadow:0 5px 40px rgba(0,0,0,.16);-moz-box-shadow:0 5px 40px rgba(0,0,0,.16);-o-box-shadow:0 5px 40px rgba(0,0,0,.16)}.fb-credit{text-align:center;margin-top:8px}.fb-credit a{transition:none;color:#bec2c9;font-family:Helvetica,Arial,sans-serif;font-size:12px;text-decoration:none;border:0;font-weight:400}.ctrlq.fb-overlay{z-index:0;position:fixed;height:100vh;width:100vw;-webkit-transition:opacity .4s,visibility .4s;transition:opacity .4s,visibility .4s;top:0;left:0;background:rgba(0,0,0,.05);display:none}.ctrlq.fb-close{z-index:4;padding:0 6px;background:#365899;font-weight:700;font-size:11px;color:#fff;margin:8px;border-radius:3px}.ctrlq.fb-close::after{content:'x';font-family:sans-serif}</style>

<div class="fb-livechat">
  <div class="ctrlq fb-overlay"></div>
  <div class="fb-widget">
    <div class="ctrlq fb-close"></div>
    <div class="fb-page" data-href="https://www.facebook.com/Free-SSH-VPN-351926902090977/" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false">
      <blockquote cite="https://www.facebook.com/Free-SSH-VPN-351926902090977/" class="fb-xfbml-parse-ignore"> </blockquote>
    </div>
    <div class="fb-credit"> 
      <a href="" target="_blank">Facebook Chat</a>
    </div>
    <div id="fb-root"></div>
  </div>
  <a href="https://m.me/Free-SSH-VPN-351926902090977" title="Send us a message on Facebook" class="ctrlq fb-button"></a> 
</div>
	
<script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>$(document).ready(function(){var t={delay:125,overlay:$(".fb-overlay"),widget:$(".fb-widget"),button:$(".fb-button")};setTimeout(function(){$("div.fb-livechat").fadeIn()},8*t.delay),$(".ctrlq").on("click",function(e){e.preventDefault(),t.overlay.is(":visible")?(t.overlay.fadeOut(t.delay),t.widget.stop().animate({bottom:0,opacity:0},2*t.delay,function(){$(this).hide("slow"),t.button.show()})):t.button.fadeOut("medium",function(){t.widget.stop().show().animate({bottom:"30px",opacity:1},2*t.delay),t.overlay.fadeIn(t.delay)})})});</script>

 

</body>
</html>
