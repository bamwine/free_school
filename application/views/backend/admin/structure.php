

<div class="panel panel-gradient">
<div class="panel-heading">
<div class="panel-title">
Fees Structure </div>
</div>
<div class="table-responsive">

<ul class="nav nav-tabs bordered">
<li class="active">
<a href="#list" data-toggle="tab"><i class="entypo-menu"></i>
class Fees list </a></li>
<li class="">
<a href="#add" data-toggle="tab"><i class="entypo-plus-circled"></i>
add Fees Structure </a></li>
</ul>

<div class="tab-content">

<div class="tab-pane active" id="list">


<?php 
$classes = $this->db->get('class')->result_array();
foreach($classes as $row):
?>
<div class="panel-group joined" id="accordion-test-<?php echo $row['class_id'];?>">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" data-parent="#accordion-test-<?php echo $row['class_id'];?>" href="#collapse<?php echo $row['class_id'];?>" class="collapsed">
<i class="entypo-rss"></i> Class <?php echo $row['name'];?> </a>
</h4>
</div>
<div id="collapse<?php echo $row['class_id'];?>" class="panel-collapse collapse" style="height: 0px;">
<div class="panel-body">
<table cellpadding="0" cellspacing="0" border="0" class="table table-bordered">
<tbody>

<?php 
$terms = $this->db->get('terms_tb')->result_array();
foreach($terms as $terms):
?>

                              

<tr class="gradeA">
<td width="100"><?php echo $terms['term'];?></td>
<td>

<?php 
$daydata = $this->db->get_where('fees_struct' , array('class_id' =>$row['class_id'], 'term' =>$terms['term']))->result_array();
foreach($daydata as $rowdata):
?>
<div class="btn-group">
<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
<?php echo $rowdata['year'];?> 
(<?php echo $rowdata['amount'] ?>) <span class="caret"></span>
</button>
<ul class="dropdown-menu">
<li>
<a href="#" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_edit_class_structure/<?php echo $rowdata['fees_id']?>');">
<i class="entypo-pencil"></i>
edit </a>
</li>
<li>
<a href="#" onclick="confirm_modal('<?php echo base_url();?>index.php?admin/structure/delete/<?php echo $rowdata['fees_id']?>');">
<i class="entypo-trash"></i>
delete </a>
</li>
</ul>
</div>
<?php
endforeach;
?>
</td>
</tr>
<!--   sta-->


<?php
endforeach;
?>


</tbody>
</table>
</div>
</div>
</div>


</div>

<?php
endforeach;
?>
</div>


<div class="tab-pane box" id="add" style="padding: 5px">
<div class="box-content">
<form action="index.php?admin/structure/create" class="form-horizontal form-groups-bordered validate" target="_top" method="post" accept-charset="utf-8" novalidate="novalidate">
<div class="form-group">
<label class="col-sm-3 control-label">class</label>
<div class="col-sm-5">
<select name="class_id" class="form-control" style="width:100%;" onchange="return get_class_subject(this.value)">
<option value=""><?php echo get_phrase('select');?></option>
                              <?php 
								$classes = $this->db->get('class')->result_array();
								foreach($classes as $row):
									?>
                            		<option value="<?php echo $row['class_id'];?>"
									<?php if($class_id == $row['class_id'])echo 'selected';?>>
											<?php echo $row['name'];?>
                                            </option>
                                <?php
								endforeach;
							  ?>
</select>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Term</label>
<div class="col-sm-5">
<select name="term" class="form-control" style="width:100%;" id="subject_selection_holder">
<option value="">Select </option>
<?php 
								$classes = $this->db->get('terms_tb')->result_array();
								foreach($classes as $row):
									?>
                            		<option value="<?php echo $row['term'];?>"
									<?php if($class_id == $row['term'])echo 'selected';?>>
											<?php echo $row['term'];?>
                                            </option>
                                <?php
								endforeach;
							  ?>
</select>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">Year</label>
<div class="col-sm-5">
<input type="number" class="form-control " id="date-own" value="<?php echo $rowdata['year'];?>" name="year"/>
</div>
</div>


<div class="form-group">
<label class="col-sm-3 control-label">Amount</label>
<div class="col-sm-5">
<input type="number" class="form-control "  name="amount"/>
</div>
</div>


<div class="form-group">
<div class="col-sm-offset-3 col-sm-5">
<button type="submit" class="btn btn-success btn-sm btn-icon icon-left"><i class="fa fa-save"></i>add class Fees</button>
</div>
</div>


</form>
</div>
</div>

</div>
</div>
</div>

 <script type="text/javascript">
      $('#date-own').datepicker({
         minViewMode: 2,
         format: 'yyyy'
       });
	    
  </script>