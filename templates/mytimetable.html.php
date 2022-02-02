<h1>My Timetable</h1>
<ul>
    <?php foreach($booked_venues as $booked_venue): ?>
        <li>
            <strong> <?= $booked_venue['course_code'] . ':' .$booked_venue['title']  ?> </strong>
            <br>
            <small><?=$booked_venue['venue']?></small>
            <small><?=$booked_venue['day']?></small>
            <small><?=$booked_venue['slot']?></small>
        </li>
    <?php endforeach ?>
    </ul>