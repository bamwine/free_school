
<!-- Resources -->

<style>
    #chartdiv2, #chartdiv {
        width		: 100%;
        height		: 300px;
        font-size	: 11px;
    }					
    .style2 {font-size: 24px}
</style>




<div class="row">
    <div class="col-md-8 col-sm-12 col-xs-12">    
        <div class="x_panel " data-collapsed="0">
            <div class="x_title">
                <?php //echo get_phrase('Charts'); ?>
            </div>
            <div class="x-content">
                <div id="chartdiv2"></div> 
            </div>
        </div>
    </div>
    <div class="col-md-4 col-sm-12 col-xs-12">    
        <div class="x_panel " data-collapsed="0">
            <div class="x_title">
                <?php echo get_phrase('% of students per class'); ?>
            </div>
            <div class="x-content">
                <div id="chartdiv"></div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-8">
        <div class="x_panel">
            <div class="x_title">
                <h2></small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">

                <div id="chartdiv"></div>

            </div>
        </div>
    </div>
    
	</div>


<script src="assets/vendors/echarts/dist/echarts.min.js"></script>

<!-- NProgress -->
<script src="assets/vendors/nprogress/nprogress.js"></script>
<!-- FullCalendar -->
<script src="assets/vendors/moment/min/moment.min.js"></script>

<script>

    $(function () {
        //        $('#sel_location_modal').slideDown('slow');
<?php if ($this->session->userdata('isFirst')) { ?>
            showSelectLocationModal();
<?php } ?>
        init_echarts1();
    });
    function init_echarts1() {
        if (typeof (echarts) === 'undefined') {
            return;
        }
        console.log('init_echarts');
        var theme = {
            color: [
                '#3498DB', '#9B59B6', '#8abb6f', '#759c6a', '#bfd3b7'
            ],
            textStyle: {
                fontFamily: 'Arial, Verdana, sans-serif'
            }
        };
        if ($('#chartdiv2').length) {

            var echartLine = echarts.init(document.getElementById('chartdiv2'), theme);
            echartLine.setOption({
                title: {
                    text: 'Students Per Class',
                    //                    subtext: 'Subtitle'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    x: 220,
                    y: 40,
                    //data: ['<?php echo get_phrase('section'); ?>', '<?php echo get_phrase('transportations'); ?>', '<?php echo get_phrase('expenses'); ?>']
                
					data: [<?php $classes = $this->db->get('class')->result_array(); foreach ($classes as $row){ ?> 
					'<?php echo $row['name_numeric']; ?>', <?php } ?>]
                
				},
                toolbox: {
                    show: true,
                    feature: {
                        magicType: {
                            show: true,
                            title: {
                                line: 'Line',
                                bar: 'Bar',
                                stack: 'Stack',
                                tiled: 'Tiled'
                            },
                            type: ['line', 'bar', 'stack', 'tiled']
                        },
                        restore: {
                            show: true,
                            title: "Restore"
                        },
                        saveAsImage: {
                            show: true,
                            title: "Save Image"
                        }
                    }
                },
                calculable: true,
                xAxis: [{
                        type: 'category',
                        boundaryGap: false,
                        //data: ['class', 'subject', 'document']
						data: [<?php $classes = $this->db->get('class')->result_array(); foreach ($classes as $row){ ?> 
					'<?php echo $row['name_numeric']; ?>', <?php } ?>]
                    }],
                yAxis: [{
                        type: 'value'
                    }],
                series: [ <?php $count=0; $classes = $this->db->get('class')->result_array(); foreach ($classes as $row): $count+1;?> {
                        name: '<?php echo $row['name_numeric']; ?>',
                        type: 'line',
                        smooth: true,
                        itemStyle: {
                            normal: {
                                areaStyle: {
                                    type: 'default'
                                }
                            }
                        },
						<?php if($count==1) ?>
                        //data: [<?php echo $this->db->count_all('student'); ?>, <?php echo $this->db->count_all('subject'); ?>, <?php echo $this->db->count_all('document'); ?>]
						data: [<?php 
									$classes = $this->db->get('class')->result_array(); foreach ($classes as $rowc){
									$this->db->select("COUNT(*) AS MyCount");
									$this->db->from("student");
									$this->db->where("class_id", $rowc['class_id']);
									$result = $this->db->get()->result_array();						
									foreach ($result as $rows){ ?> 
									'<?php echo $rows['MyCount']; ?>', <?php }} ?>
							 ]
						
						
					}, <?php endforeach; ?>]
            });
        }
		
		
        if ($('#chartdiv').length) {

            var echartPie = echarts.init(document.getElementById('chartdiv'), theme);
            echartPie.setOption({
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    x: 'center',
                    y: 'bottom',
                    //data: ['<?php echo get_phrase('section'); ?>', '<?php echo get_phrase('transportations'); ?>', '<?php echo get_phrase('expenses'); ?>']
                data: [<?php $classes = $this->db->get('class')->result_array(); foreach ($classes as $row){ ?> 
					'<?php echo $row['name_numeric']; ?>', <?php } ?>]
				
				},
                toolbox: {
                    show: true,
                    feature: {
                        magicType: {
                            show: true,
                            type: ['pie', 'funnel'],
                            option: {
                                funnel: {
                                    x: '25%',
                                    width: '50%',
                                    funnelAlign: 'left',
                                    max: 1548
                                }
                            }
                        },
                        restore: {
                            show: true,
                            title: "Restore"
                        },
                        saveAsImage: {
                            show: true,
                            title: "Save Image"
                        }
                    }
                },
                calculable: true,
                series: [{
                        name: 'Current Status',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '48%'],
                        data: [  <?php
							 $classes = $this->db->get('class')->result_array();
							 foreach ($classes as $rowc){
									$this->db->select("COUNT(*) AS MyCount");
									$this->db->from("student");
									$this->db->where("class_id", $rowc['class_id']);
									$result = $this->db->get()->result_array();
									foreach ($result as $rows){
														?>{
															
														 "name": '<?php echo $rowc['name']; ?>',
													   
														"value": <?php echo $rows['MyCount']; ?>	
													
												},

											 <?php
							 }}
									?>
							]
                    }]
            });
            var dataStyle = {
                normal: {
                    label: {
                        show: false
                    },
                    labelLine: {
                        show: false
                    }
                }
            };
            var placeHolderStyle = {
                normal: {
                    color: 'rgba(0,0,0,0)',
                    label: {
                        show: false
                    },
                    labelLine: {
                        show: false
                    }
                },
                emphasis: {
                    color: 'rgba(0,0,0,0)'
                }
            };
        }
    }
</script>
