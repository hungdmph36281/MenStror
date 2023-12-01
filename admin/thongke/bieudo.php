<div class="content-page">
  <div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

      <!-- start page title -->
      <div class="row">
        <div class="col-12">
          <div class="page-title-box">
            <div class="page-title-right">
              <ol class="breadcrumb m-0">
                <li class="breadcrumb-item"><a href="index.php">Trang chủ admin</a></li>
                <li class="breadcrumb-item active">Danh sách sản phẩm</li>
              </ol>
            </div>
            <h3 class="page-title">BIỂU ĐỒ</h3>


            <div class="container-fluid">
              <div id="piechart"></div>
            </div>

            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

            <script type="text/javascript">
              // Load google charts
              google.charts.load('current', {
                'packages': ['corechart']
              });
              google.charts.setOnLoadCallback(drawChart);

              // Draw the chart and set the chart values
              function drawChart() {
                var data = google.visualization.arrayToDataTable([
                  ['Task', 'Hours per Day'],
                  <?php
                  $tongdm = count($listthongke);
                  $i = 1;
                  foreach ($listthongke as $thongke) {
                    extract($thongke);
                    if ($i == $tongdm) $dauphay = "";
                    else $dauphay = ",";
                    echo "['" . $thongke['tendm'] . "', " . $thongke['countsp'] . "],";
                    $i += 1;
                  }
                  ?>
                ]);

                // Optional; add a title and set the width and height of the chart
                var options = {
                  'width': 1270,
                  'height': 550
                };

                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(data, options);
              }
            </script>
          </div>


        </div>
      </div>

    </div>
    <!-- end page title -->