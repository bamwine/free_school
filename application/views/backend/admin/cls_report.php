
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
   <div>    
        <div class="x_panel " data-collapsed="0">
            <div class="x_title">
                <?php echo get_phrase(' students per class'); ?>
            </div>
            <div class="x-content">
                <div id="chartdiv"></div>
            </div>
        </div>
    </div>
 </div>


  <script>
            var chart;

            var chartData = [ <?php 
									$classes = $this->db->get('class')->result_array(); foreach ($classes as $rowc){
									$this->db->select("COUNT(*) AS MyCount");
									$this->db->from("student");
									$this->db->where("class_id", $rowc['class_id']);
									$result = $this->db->get()->result_array();						
									foreach ($result as $rows){ ?>
                {
                    "year": '<?php echo $rowc['name_numeric']?>',
                    "students in Class": '<?php echo $rows['MyCount']?>'
                   
                }, 
									<?php  }}; ?>
                
            ];


            AmCharts.ready(function () {
                // SERIAL CHART
                chart = new AmCharts.AmSerialChart();
                chart.dataProvider = chartData;
                chart.categoryField = "year";
                chart.startDuration = 1;
                chart.plotAreaBorderColor = "#DADADA";
                chart.plotAreaBorderAlpha = 1;
                // this single line makes the chart a bar chart
                chart.rotate = false;

                // AXES
                // Category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.gridPosition = "start";
                categoryAxis.gridAlpha = 0.1;
                categoryAxis.axisAlpha = 0;

                // Value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.axisAlpha = 0;
                valueAxis.gridAlpha = 0.1;
                valueAxis.position = "top";
                chart.addValueAxis(valueAxis);

                // GRAPHS
                // first graph
                var graph1 = new AmCharts.AmGraph();
                graph1.type = "column";
                graph1.title = "students in Class";
                graph1.valueField = "students in Class";
                graph1.balloonText = "students in Class:[[value]]";
                graph1.lineAlpha = 0;
                graph1.fillColors = "#ADD981";
                graph1.fillAlphas = 1;
                chart.addGraph(graph1);

                // second graph
              /*  var graph2 = new AmCharts.AmGraph();
                graph2.type = "column";
                graph2.title = "To Be Paid";
                graph2.valueField = "To Be Paid";
                graph2.balloonText = "To Be Paid:[[value]]";
                graph2.lineAlpha = 0;
                graph2.fillColors = "#81acd9";
                graph2.fillAlphas = 1;
                chart.addGraph(graph2); */

                // LEGEND
                var legend = new AmCharts.AmLegend();
                chart.addLegend(legend);

                chart.creditsPosition = "top-right";

                // WRITE
                chart.write("chartdiv");
            });
        </script>
