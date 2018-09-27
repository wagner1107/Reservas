<?php

?>

<table border="1" width="100%">
	<tr>
		<th>DOM</th>
		<th>SEG</th>
		<th>TER</th>
		<th>QUA</th>
		<th>QUI</th>
		<th>SEX</th>
		<th>SAB</th>
	</tr>
	<?php for($l = 0; $l < $linhas; $l++): ?>
		<tr>
		<?php for($q = 0; $q < 7; $q++): ?>
			<?php
			$w = date('Y-m-d', strtotime(($q+($l*7)).' days', strtotime($data_inicio)));
			?>
			<td>
				<?php
				echo $w."<br/>";
				$w = strtotime($w);
				foreach ($lista as $item) {
						$dr_inicio = strtotime($item['data_inicio']);
						$dr_fim = strtotime($item['data_fim']);

						if($w >= $dr_inicio && $w <= $dr_fim) {
							echo $item['pessoa']." (".$item['id_carro'].")<br/>";
						}
					}	


				 ?>
					
			</td>
			<?php endfor; ?>
		</tr>
	<?php endfor; ?>
</table>