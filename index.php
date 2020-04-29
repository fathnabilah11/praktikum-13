<?php
include('koneksi.php');
$penderita = mysqli_query($koneksi,"select * from penderita");
while($row = mysqli_fetch_array($penderita)){
	$nama_negara[] = $row['Country'];
	
	$query = mysqli_query($koneksi,"select sum(Total_Cases) as Total_Cases from penderita where no='".$row['no']."'");
	$row = $query->fetch_array();
	$jumlah_penderita[] = $row['Total_Cases'];
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Grafik Penderita Covid-19</title>
	<script type="text/javascript" src="Chart.js"></script>
</head>
<body>
	<div style="width: 800px;height: 800px">
		<canvas id="myChart"></canvas>
	</div>


	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode($nama_negara); ?>,
				datasets: [{
					label: 'Total Penderita',
					data: <?php echo json_encode($jumlah_penderita); ?>,
					backgroundColor: 'rgba(255, 99, 132, 0.2)',
					borderColor: 'rgba(255,99,132,1)',
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>