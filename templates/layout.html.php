<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/assets/css/style.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
          <li class="active">
            <a href="/"><span class="fa fa-home mr-3"></span> Homepage</a>
          </li>
    
          <li>
            <a href="/book"><span class="fa fa-sticky-note mr-3"></span> Book Venue</a>
          </li>
          <li>
            <a href="/mytimetable"><span class="fa fa-sticky-note mr-3"></span> View Timetable</a>
          </li>
    
          <li>
            <a href="#"><span class="fa fa-paper-plane mr-3"></span> Help</a>
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

    
    <footer>&copy;UCC <?php  $date = new DateTime('Y'); echo $date->format('Y'); ?></footer>
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/popper.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/main.js"></script>
</body>
</html>