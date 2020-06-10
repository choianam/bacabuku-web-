<!doctype html>
<html>
	<head>
		<title>Admin Page | View All Products</title>
		<!-- Load JQuery dari CDN -->
		<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
		
		<!-- Load DataTables dan Bootstrap dari CDN -->
		<script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" language="javascript" src="//cdn.datatables.net/plug-ins/9dcbecd42ad/integration/bootstrap/3/dataTables.bootstrap.js"></script>
		
		<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/plug-ins/9dcbecd42ad/integration/bootstrap/3/dataTables.bootstrap.css">
	</head>
	<body>
        <?php $this->load->view('system_view/buku/admin_menu')?>
		<!-- dalam div row harus ada col yang maksimum nilainya 12 -->
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
			
				<table id="myTable" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
                            <th>#</th>
                            <th>Kode Buku</th>
                            <th>Judul Buku</th>
                            <th>Kategori Buku</th>
                            <th>Pengarang Buku</th>
                            <th>Penerbit Buku</th>
                            <th>Jumlah Halaman</th>
                            <th>Image</th>
                            <th>Dokumen</th>
                            <th>Aksi</th>
							<th>
								<?=anchor(	'bukuu/create',
											'Add Product', 
											['class'=>'btn btn-primary btn-sm'])
								?>
							</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach($query->result() as $data) : ?>
						<tr>
                            <td><?=$data->kode_buku?></td>
                            <td><?=$data->judul_buku?></td>
                            <td><?=$data->kategori_buku?></td>
                            <td><?=$data->pengarang_buku?></td>
                            <td><?=$data->penerbit_buku?></td>
                            <td><?=$data->jumlah_halaman?></td>
							<td><td><img src="<?= $data->image ? base_url("uploads/$data->image") :base_url("uploads")?>"alt ="" height="50"></td>
							<td>
								<?=anchor(	'bukuu/update/' . $data->id, 
											'Edit',
											['class'=>'btn btn-default btn-sm'])
								?> 
								<?=anchor(	'bukuu/delete/' . $data->id, 
											'Delete',
											['class'=>'btn btn-danger btn-sm',
											 'onclick'=>'return confirm(\'Apakah Anda Yakin?\')'
											])
								?> 
							</td>
						</tr>
						<?php endforeach; ?>
					</tbody>
				</table>
			</div>
			<div class="col-md-1"></div>
		</div>
		
		
		<script>
			$(document).ready(function(){
				$('#myTable').DataTable();
			});
		</script>
	</body>
</html>