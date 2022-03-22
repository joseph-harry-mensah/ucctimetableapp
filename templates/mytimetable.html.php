<h2 style="padding: 1.3rem; width:100%; background-color: #2d3690"><span style="color: #FFF;">Welcome</span> <span style="color: #FF0000; font-weight: 700;"><?=$first_name?></span></h2>
<h3>Timetable for Semester 1, 2021/2022</h3>
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
            <td><?= $booked_venue['course_code'] ?> </td>
            <td><?= $booked_venue['title']  ?></td>
            <td><?=$booked_venue['venue']?></td>
            <td><?=$booked_venue['day']?></td>
            <td><?=$booked_venue['slot']?></td>
            <td><input class="btn btn-danger" type="submit" value="Remove"/></td>
        </tr>
    <?php endforeach ?>
    </tbody>
    
</table>
<div>
        <input type="submit" class="btn btn-secondary" value="Save as PDF"/>
</div>