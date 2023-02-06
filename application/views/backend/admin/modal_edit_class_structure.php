<?php 
$edit_data		=	$this->db->get_where('fees_struct' , array('fees_id' => $param2) )->result_array();
foreach ( $edit_data as $rowdata):
?>

<div class="tab-pane box active" id="edit" style="padding: 5px">
<div class="box-content">
<form action="<?php echo base_url();?>index.php?admin/structure/do_update/<?php echo $rowdata['fees_id']?>" class="form-horizontal validatable" target="_top" method="post" accept-charset="utf-8">
<div class="form-group">
<label class="col-sm-3 control-label">class</label>
<div class="col-sm-5">
<select name="class_id" class="form-control selectboxit visible" style="display: none;">
<option value=""><?php echo get_phrase('select');?></option>
<?php 
	$clas = $this->db->get('class')->result_array();
	foreach($clas as $row3):
		?>
		<option value="<?php echo $row3['class_id'];?>"
			<?php if($rowdata['class_id'] == $row3['class_id'])echo 'selected';?>>
					<?php echo $row3['name'];?>
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
<select name="term" class="form-control selectboxit visible" style="display: none;">
<?php 
	$clas = $this->db->get('terms_tb')->result_array();
	foreach($clas as $row):
		?>
		<option value="<?php echo $row['term'];?>"
			<?php if($rowdata['term'] == $row['term'])echo 'selected';?>>
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
<input type="number" class="form-control date-own" id="" value="<?php echo $rowdata['year'];?>" name="year"/>
</div>
</div>


<div class="form-group">
<label class="col-sm-3 control-label">Amount</label>
<div class="col-sm-5">
<input type="number" class="form-control" value="<?php echo $rowdata['amount'];?>" name="amount"/>
</div>
</div>


 <script type="text/javascript">
      $('.date-own').datepicker({
         minViewMode: 2,
         format: 'yyyy'
       });
	   
	   
  </script>

<div class="form-group">
<div class="col-sm-offset-3 col-sm-5">
<button type="submit" class="btn btn-info">edit class Fees</button>
</div>
</div>
</form>
</div>
</div>

<?php
endforeach;
?>
