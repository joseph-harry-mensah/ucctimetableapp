<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$title?></title>
</head>
<body>
   <nav>
        <header>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/book">Book a lecture</a></li>
                <li><a href="/mytimetable">My Time Table</a></li>        
            </ul>
        </header>
   </nav>
    <main>
        <?=$output?>
    </main>
    <footer>&copy;UCC <?php  $date = new DateTime('Y'); echo $date->format('Y'); ?></footer>
</body>
</html>