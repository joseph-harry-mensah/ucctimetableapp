<h2>Are you sure you want to remove this booking</h2>
<form  action="/removebooking" method="post" style="display: inline">
    <input name="deleteYes" type="hidden" value="<?=$bookingData?>"/>
    <input class="btn btn-danger"  type="submit" value="Yes"  style="padding: 1rem;" />
</form>
<form action="/mytimetable" method="get" style="display: inline;">
<input class="btn btn-primary" name="delete" type="submit" value="Cancel" style="padding: 1rem;/>
</form>