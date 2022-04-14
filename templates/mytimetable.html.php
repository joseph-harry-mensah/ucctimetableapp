<h2 style="padding: 1.3rem; width:100%; background-color: #2d3690"><span style="color: #FFF;">Welcome</span> <span style="color: #FF0000; font-weight: 700;"><?=$first_name ?></span></h2>
<?php 
    $str = str_split( $session[0]['session'], 4);
    
    echo '<h3>Timetable for Semester ' . $str[1] . ', ' . $str[0] .  '/' . strval(intval($str[0])+1) . '</h3>';
?>

<table  class="table table-striped table-hover">
    <thead style="font-weight: 700; font-size: 1rem;">
        <tr>
            <td scope="col">Code</td>
            <td scope="col">Title</td>
            <td scope="col">Venue</td>
            <td scope="col">Day</td>
            <td scope="col">Time</td>
        </tr>
    </thead>
    <tbody>
    <?php foreach($booked_venues as $booked_venue): ?>
        <tr>
            <form action="" method="POST">
                <td><?= $booked_venue['course_code'] ?></td>
                <td><?= $booked_venue['title']  ?></td>
                <td><?=$booked_venue['venue']?></td>
                <td><?=$booked_venue['day']?></td>
                <td><?=$booked_venue['slot']?></td>
                <td><input type="hidden" name="booking" value="<?=$booked_venue['id']?>"/></td>
                <td><input class="btn-delete"  type="submit" value="X Remove" style="background-color: none; border: none; color: #ff0000; font-size: 0.6rem; font-weight: 400;"/></td>
            </form>
        </tr>
    <?php endforeach ?>
    </tbody>
    
</table>
<div>
    <form action="/print" method="GET" target="_blank">
        <input type="submit" class="btn btn-secondary" value="Save as PDF"/>
    </form>
</div>