<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$title?></title>
</head>
<body>
    <header>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/ucc/booking">Bookings</a></li>
            <li><a href="/ucc/venues">Venues</a></li>
        </ul>
    </header>
    <main>
        <?=$output?>
    </main>
    <footer>&copy;UCC <?php  $date = new DateTime('Y'); echo $date->format('Y'); ?></footer>
</body>
</html>