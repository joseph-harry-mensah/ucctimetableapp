<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/assets/css/style.css" rel="stylesheet"/>
    <link href="/assets/css/dist/styles/login.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.0/css/all.css" integrity="sha384-eLT4eRYPHTmTsFGFAzjcCWX+wHfUInVWNm9YnwpiatljsZOwXtwV2Hh6sHM6zZD9" crossorigin="anonymous">
    <title><?=$title?></title>
</head>
<body>
<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	          <i class="fa fa-bars"></i>
	          <span class="sr-only">More Options</span>
	        </button>
        </div>
	  		<h1><a href="/" class="logo">UCC Time Table</a></h1>
        <ul class="list-unstyled components mb-5">
          <?php if ($isLoggedIn): ?>
            
          <li>
            <a href="/book"><i class="fa-solid fa-book mr-3"></i> Book Venue</a>
          </li>
          <li>
            <a href="/mytimetable"><i class="fa-solid fa-clock mr-3"></i> My Timetable</a>
          </li>
          <li>
            <a href="/logout"><i class="fa-solid fa-person-walking-arrow-right mr-3"></i> Logout</a>
          </li>
          <?php else: ?>
            <li class="active">
              <a href="/"><i class="fa-solid fa-house mr-3"></i> Homepage</a>
            </li>
          <li>
            <a href="/login"><i class="fa-solid fa-right-to-bracket mr-3"></i> Login</a>
          </li>
          <?php endif; ?>
          <li>
            <a href="#"><i class="fa-solid fa-circle-question mr-3"></i> Help</a>
          </li>
        </ul>
    	</nav>
        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
      <main>
        <?=$output?>
    </main>
      </div>
	</div>
    <footer>&copy;UCC Time Table App <?php  $date = new DateTime('Y'); echo $date->format('Y'); ?></footer>
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/popper.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/main.js"></script>
</body>
</html>