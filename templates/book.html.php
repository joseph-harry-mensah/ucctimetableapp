<h2>Book a venue</h2>
<form action="" method="post">
    <select name="book[title]" style="width: 350px; padding:0.5rem; margin-bottom: 20px;">
        <option>---SELECT A COURSE---</option>
        <?php foreach($courses as $course): ?>
            <option  value="<?= $course['courseid'] . '|' . $course['code'] . '|' . $course['title']. '|' . $course['credits'] . '|' . $course['session']?>"><?= substr($course['title'], 0,25) . ': ('. $course['code'] .')' ?></option>         
        <?php endforeach ?>
    </select>
 
    <br>
   
    <select  name="book[venue]" style="width: 350px; padding:0.5rem; margin-bottom: 20px;">
        <option>---SELECT A VENUE---</option>
        <?php foreach($venues as $venue): ?>
            <option value="<?= $venue['venue_code'] . '|' . $venue['venue_id']?>"><?= $venue['venue_code'] ?></option>
        <?php endforeach ?>
    </select>
    
    <br>
    <select name="book[day]" style="width: 350px; padding:0.5rem; margin-bottom: 20px;">
        <option>---SELECT A DAY---</option>
        <?php foreach($days as $day): ?>
            <option  value="<?= $day['day_name'] ?>"><?= $day['day_name'] ?></option>
        <?php endforeach ?>
    </select>
    <br>
    <select name="book[duration]" style="width: 350px; padding:0.5rem; margin-bottom: 20px;">
        <option>---SELECT DURATION OF LECTURE---</option>
        <?php foreach($duration as $dur): ?>
            <option  value="<?= $dur['duration_value'] ?>"><?= $dur['duration_value'] . ' CREDITS' ?></option>
        <?php endforeach ?>
    </select>

    <br>
   
    <select name="book[time]" style="width: 350px; padding:0.5rem" margin-bottom: 20px;">
        <option>---SELECT A TIME---</option>
        <?php foreach($times as $time): ?>
            <option  value="<?= $time['time_name'] ?>"><?= $time['time_name'] ?></option>
        <?php endforeach ?>
    </select>
    <br>
    <input class="btn btn-primary px-4" type="submit" value="Book" style="margin-top: 1rem;">
</form>