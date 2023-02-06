
<div class="row">
<div class="col-md-12">
<form action="index.php?admin/student_marksheet" method="post" accept-charset="utf-8">

<div class="col-md-4">
<div class="form-group">
<select name="exam_id" class="form-control selectboxit visible" style="display: none;">
<option value=""><?php echo get_phrase('select');?></option>
                              <?php 
								$examsd = $this->db->get('exam')->result_array();
								foreach($examsd as $row):
									?>
                            		<option value="<?php echo $row['exam_id'];?>"
									<?php if($exam_id == $row['exam_id'])echo 'selected';?>>
											<?php echo $row['name'];?>
                                            </option>
                                <?php
								endforeach;
							  ?>
</select>
</div>
</div>
<input type="hidden" name="operation" value="selection">
<input type="hidden" name="student_id" value="<?php echo $student_id?>">
<div class="col-md-4">
<button type="submit" class="btn btn-success btn-sm btn-icon icon-left"> <i class="entypo-calendar"></i>View Mark Sheet</button>
</div>
</form> </div>

<div class="col-md-14">
<img src="<?php echo $this->crud_model->get_image_url('student',$student_id);?>" class="img-circle" width="100px" />
</div>

</div>
<br>

<hr>
<div class="row">
<div class="col-md-12">
<table class="table table-bordered">
<thead>
<tr>
<td style="text-align: center;">
Students <i class="entypo-down-thin"></i> | Subjects <i class="entypo-right-thin"></i>
</td>

<?php 
 
  $subject   =   $this->db->get_where('subject' , array('class_id'=>$class_id))->result_array();
foreach($subject as $subject):?>
  
  <td style="text-align: center;"><?php echo $subject['name'];?></td>
  
 <?php endforeach;?>
<td style="text-align: center;">Total</td>
<td style="text-align: center;">Average Grade Point</td>
<td style="text-align: center;">Aggregates</td>
<td style="text-align: center;">division</td>
</tr>
</thead>
<tbody>
					
<?php 
//$this->db->where('class_id' , $class_id);
 $students = $this->db->get_where('student' , array('student_id'=>$student_id))->result_array();
 foreach($students as $studentsrow){
	 ?>
<tr>
<td style="text-align: center;"><?php echo $studentsrow['name'];?></td>

 <!-- makrks obtained -->
<?php get_subject_mark($studentsrow['student_id'],$exam_id);?>
 <!-- ends makrks obtained -->
 
 
 <!-- total marks -->
 
  <td style="text-align: center;"><?php total_marks($studentsrow['student_id'],$exam_id);?></td>
  <!-- end total marks -->
  
   <!-- get average -->
   
    <td style="text-align: center;"><?php average_marks($studentsrow['student_id'],$exam_id);?></td>
  
    <!-- ends get average -->
	
	   <!-- get aggregates -->
     
	<td style="text-align: center;"><?php get_aggreates($studentsrow['student_id'],$exam_id);?></td>
    <!-- ends get aggregates -->
	
	 <!-- get division -->
	 
	 <td style="text-align: center;"><?php get_division($studentsrow['student_id'],$exam_id);?></td>




</tr>
<?php } ?>

</tbody>
</table>

<center>
<a href="index.php?admin/student_marksheet_print_view/<?php echo $student_id;?>/<?php echo $exam_id;?>" class="btn btn-primary" target="_blank">
Print Mark Sheet </a>
</center>
</div>
</div>
