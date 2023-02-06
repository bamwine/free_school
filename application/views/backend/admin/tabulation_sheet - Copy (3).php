
<div class="row">
<div class="col-md-12">
<form action="index.php?admin/tabulation_sheet" method="post" accept-charset="utf-8">
<div class="col-md-4">
<div class="form-group">
<select name="class_id" class="form-control selectboxit visible" style="display: none;">
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
<div class="col-md-4">
<button type="submit" class="btn btn-success btn-sm btn-icon icon-left"> <i class="entypo-calendar"></i>View Tabulation Sheet</button>
</div>
</form> </div>
</div>
<br>
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4" style="text-align: center;">
<div class="tile-stats tile-white tile-white-primary">
<h3>
Tabulation Sheet </h3>
<h4><?php echo $this->crud_model->get_type_name_by_id('class',$class_id);?></h4>
<h4><?php echo $this->crud_model->get_type_name_by_id('exam',$exam_id);?></h4>
</div>
</div>
<div class="col-md-4"></div>
</div>
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
</tr>
</thead>
<tbody>
					
<?php 
//$this->db->where('class_id' , $class_id);
 $students = $this->db->get_where('student' , array('class_id'=>$class_id))->result_array();
 foreach($students as $studentsrow){ ?>
<tr>
<td style="text-align: center;"><?php echo $studentsrow['name'];?></td>

 <!-- makrks obtained -->

<?php		
  $subject   =   $this->db->get_where('subject' , array('class_id'=>$class_id))->result_array();
 foreach($subject as $subjectrow){   ?>
  
<?php get_subject_mark($studentsrow['student_id'],$exam_id,$subjectrow['subject_id']);?>

 <?php } 
 ?>
 
 <!-- ends makrks obtained -->
 
 
 <!-- total marks -->
 
  <?php total_marks($studentsrow['student_id'],$exam_id);?>
 
  <!-- end total marks -->
  
   <!-- get average -->
   <?php average_marks($studentsrow['student_id'],$exam_id);?>
  
    <!-- ends get average -->
	
	   <!-- get aggregates -->
     <?php get_aggreates($studentsrow['student_id'],$exam_id);?>
	 
    <!-- ends get aggregates -->

  


</tr>
<?php } ?>

</tbody>
</table>
<center>
<a href="index.php?admin/tabulation_sheet_print_view/<?php echo $class_id;?>/<?php echo $exam_id;?>" class="btn btn-primary" target="_blank">
Print Tabulation Sheet </a>
</center>
</div>
</div>
