<div class="main-content" style="min-height: 1017px;">
<div class="row">
<div class="col-md-12 col-sm-12 clearfix" style="text-align:center;">
<h2 style="font-weight:200; margin:0px; color: #FF9900">OPTIMUM LINKUP SCHOOL SYSTEMS</h2>
</div>

<div class="col-md-12 col-sm-12 clearfix ">
<ul class="list-inline links-list pull-left">

<li class="dropdown language-selector">
<strong style="color:#FF0000">Running Session:&nbsp;2016-2017</strong>
<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">
<i class="entypo-user"></i>teacher </a>
<ul class="dropdown-menu pull-left">
<li>
<a href="https://www.optimumlinkup.com.ng/software/index.php?teacher/manage_profile">
<i class="entypo-info"></i>
<span>Edit Profile</span>
</a>
</li>
<li>
<a href="https://www.optimumlinkup.com.ng/software/index.php?teacher/manage_profile">
<i class="entypo-key"></i>
<span>change password</span>
</a>
</li>
</ul>
</li>
</ul>
<ul class="list-inline links-list pull-right">


<li>
<a href="https://www.optimumlinkup.com.ng/software/index.php?login/logout">
Log Out <i class="entypo-logout right"></i>
</a>
</li>
</ul>
</div>
</div>
<hr style="margin-top:0px;">
<h3 style="">
<i class="entypo-right-circled"></i>
Manage Daily Attendance </h3>
<hr>
<div class="panel panel-gradient">
<div class="panel-heading">
<div class="panel-title">
Attendance Information Page </div>
</div>
<br>
<div class="table-responsive">
<table cellpadding="0" cellspacing="0" border="0" class="table table-bordered">
<thead>
<tr>
<th>Select Date</th>
<th>Select Month</th>
<th>Select Year</th>
<th>select class</th>
<th>Select Date</th>
</tr>
</thead>
<tbody>
<form method="post" action="https://www.optimumlinkup.com.ng/software/index.php?teacher/attendance_selector" class="form"></form>
<tr class="gradeA">
<td>
<select name="date" class="form-control">
<option value="1">
1 </option>
<option value="2">
2 </option>
<option value="3">
3 </option>
<option value="4">
4 </option>
<option value="5">
5 </option>
<option value="6">
6 </option>
<option value="7">
7 </option>
<option value="8">
8 </option>
<option value="9">
9 </option>
<option value="10">
10 </option>
<option value="11">
11 </option>
<option value="12">
12 </option>
<option value="13">
13 </option>
<option value="14">
14 </option>
<option value="15">
15 </option>
<option value="16">
16 </option>
<option value="17" selected="selected">
17 </option>
<option value="18">
18 </option>
<option value="19">
19 </option>
<option value="20">
20 </option>
<option value="21">
21 </option>
<option value="22">
22 </option>
<option value="23">
23 </option>
<option value="24">
24 </option>
<option value="25">
25 </option>
<option value="26">
26 </option>
<option value="27">
27 </option>
<option value="28">
28 </option>
<option value="29">
29 </option>
<option value="30">
30 </option>
<option value="31">
31 </option>
</select>
</td>
<td>
<select name="month" class="form-control">
<option value="1">
january </option>
<option value="2">
february </option>
<option value="3">
march </option>
<option value="4">
april </option>
<option value="5">
may </option>
<option value="6">
june </option>
<option value="7">
july </option>
<option value="8" selected="selected">
august </option>
<option value="9">
september </option>
<option value="10">
october </option>
<option value="11">
november </option>
<option value="12">
december </option>
 </select>
</td>
<td>
<select name="year" class="form-control">
<option value="2020">
2020 </option>
<option value="2019">
2019 </option>
<option value="2018" selected="selected">
2018 </option>
<option value="2017">
2017 </option>
<option value="2016">
2016 </option>
<option value="2015">
2015 </option>
<option value="2014">
2014 </option>
<option value="2013">
2013 </option>
<option value="2012">
2012 </option>
<option value="2011">
2011 </option>
<option value="2010">
2010 </option>
</select>
</td>
<td>
<select name="class_id" class="form-control">
<option value="">Select a class</option>
<option value="2" selected="selected">
KG </option>
<option value="3">
Primary One </option>
<option value="4">
PRIMARY THREE </option>
<option value="5">
Grade 11 </option>
<option value="6">
class </option>
</select>
</td>
<td align="center">
<button type="submit" class="btn btn-success btn-sm btn-icon icon-left"><i class="entypo-plus"></i>Manage Attendance</button>
</td>
</tr>

</tbody>
</table>
<hr>
</div>
</div>
<center>
<div class="row">
<div class="col-sm-offset-4 col-sm-4">
<div class="tile-stats tile-white-gray">
<div class="icon"><i class="entypo-suitcase"></i></div>
<h2>Friday</h2>
<h3>Attendance of class 2</h3>
<p>17-8-2018</p>
</div>
<a href="#" id="update_attendance_button" onclick="return update_attendance()" class="btn btn-success btn-sm btn-icon icon-left">
<i class="entypo-pencil"></i>
Update Attendance
</a>
</div>
</div>
</center>
<hr>
<div class="row" id="attendance_list">
<div class="col-sm-offset-0 col-md-12">
<table class="table table-bordered">
<thead>
<tr>
<td>roll</td>
<td>name</td>
<td>status</td>
</tr>
</thead>
<tbody>
<tr class="gradeA">
<td>ROLL</td>
<td>TUNDE ALOWO A</td>
<td></td>
</tr>
<tr class="gradeA">
<td>roll</td>
<td>kemi</td>
<td></td>
</tr>
<tr class="gradeA">
<td></td>
<td>Student</td>
<td></td>
</tr>
<tr class="gradeA">
<td>44</td>
<td>sugunendra pandey</td>
<td></td>
</tr>
<tr class="gradeA">
<td>5000</td>
<td>Aman Kumar Pandey</td>
<td></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="row" id="update_attendance" style="display: none;">

<form method="post" action="https://www.optimumlinkup.com.ng/software/index.php?teacher/manage_attendance/17/8/2018/2">
<div class="col-sm-offset-0 col-md-12">
<table class="table table-bordered">
<thead>
<tr class="gradeA">
<th>roll</th>
<th>name</th>
<th>status</th>
</tr>
</thead>
<tbody>
<tr class="gradeA">
<td>ROLL</td>
<td>TUNDE ALOWO A</td>
<td align="center">
<select name="status_5" class="form-control" style="width:100px; float:left;">
<option value="0" selected="selected"></option>
<option value="1">Present</option>
<option value="2">Absent</option>
</select>
</td>
</tr>
<tr class="gradeA">
<td>roll</td>
<td>kemi</td>
<td align="center">
<select name="status_11" class="form-control" style="width:100px; float:left;">
<option value="0" selected="selected"></option>
<option value="1">Present</option>
<option value="2">Absent</option>
</select>
</td>
</tr>
<tr class="gradeA">
<td></td>
<td>Student</td>
<td align="center">
<select name="status_15" class="form-control" style="width:100px; float:left;">
<option value="0" selected="selected"></option>
<option value="1">Present</option>
<option value="2">Absent</option>
</select>
</td>
</tr>
<tr class="gradeA">
<td>44</td>
<td>sugunendra pandey</td>
<td align="center">
<select name="status_18" class="form-control" style="width:100px; float:left;">
<option value="0" selected="selected"></option>
<option value="1">Present</option>
<option value="2">Absent</option>
</select>
</td>
</tr>
<tr class="gradeA">
<td>5000</td>
<td>Aman Kumar Pandey</td>
<td align="center">
<select name="status_20" class="form-control" style="width:100px; float:left;">
<option value="0" selected="selected"></option>
<option value="1">Present</option>
<option value="2">Absent</option>
</select>
</td>
</tr>
</tbody>
</table>
<input type="hidden" name="date" value="2018-8-17">
<center>
<button type="submit" class="btn btn-success btn-sm btn-icon icon-left"><i class="entypo-book"></i>Save Changes</button>
</center>
</div>
</form>
</div>
<script type="text/rocketscript" data-rocketoptimized="true">

    $("#update_attendance").hide();

    function update_attendance() {

        $("#attendance_list").hide();
        $("#update_attendance_button").hide();
        $("#update_attendance").show();

    }
</script>

<footer class="main" align="center" style="color:#FF0000">Ã‚Â© 2017 Optimum Linkup School Management System. Developed by <a href="https://optimumlinkup.com.ng">Optimum Linkup Universal Concepts</a> Version 5.0</footer>
</div>