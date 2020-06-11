<?php $this->load->view('page/header'); ?>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs/jq-3.2.1/dt-1.10.16/r-2.2.1/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs/jq-3.2.1/dt-1.10.16/r-2.2.1/datatables.min.js"></script>

<!-- load sidebar in page/sidebar -->
<?php $this->load->view('page/sidebar'); ?>

<!-- Load navbar in page/navbar -->
<?php $this->load->view('page/navbar'); ?>

<script>
    $( function() {
    $( "#datepicker" ).datepicker({
        
                  dateFormat : "dd-mm-yy",
                  showAnim:""	,
                  minDate: -0, 
                  maxDate: "+1M",

    });

    $( "#datepicker2" ).datepicker({
        
                  dateFormat : "dd-mm-yy",
                  showAnim:""	,
                  minDate: -0, 
                  maxDate: "+2W",

    });
  } );
  
</script>


<div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <?php if ( NULL !== $this->session->flashdata('message')){echo $this->session->flashdata('message');} ?>
                            <div class="card card-plain table-plain-bg">
                                <div class="card-header ">
                                    <h4 class="card-title">Data-Data Buku</h4>
                                    <div class="pull-right">
                                        <a href="<?=site_url('bukuu/create')?>" clas="btn btn-primary btn-flat">
                                            <i class="fa fa-user-plus"></i>Create
                                        </a>
                                    </div>
                                    <p class="card-category"></p>
                                </div>
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <th>#</th>
                                            <th>Nama File</th>
                                            <th>Image</th>
                                            <th>Judul Buku</th>
                                            <th>Kategori Buku</th>
                                            <th>Pengarang Buku</th>
                                            <th>Penerbit Buku</th>
                                            <th>Jumlah Halaman</th>
                                            <th>Aksi</th>
                                        </thead>

                                        <tbody>
                                            <?php $no = 1;
                                            foreach($query->result() as $row) { ?>
                                            <tr>
                                            <td><?php echo $no++; ?></td>
                                            <td><?=$row->nama_file;?></td>
                                            <td><img  src="<?=base_url()?>uploads/<?=$row->nama_file;?>"></td>
                                            <td><?=$row->judul_buku;?></td>
                                            <td><?=$row->kategori_buku;?></td>
                                            <td><?=$row->pengarang_buku;?></td>
                                            <td><?=$row->penerbit_buku;?></td>
                                            <td><?=$row->jumlah_halaman;?></td>
                                                <td class="text-center" width="160px">
                                                <a href="<?=site_url('bukuu/update/'.$row->id)?>" class="btn btn-primary btn-xs" >
                                                        <i class="pe-7s-shield"></i> Edit</a>
                                                <a href="<?=site_url('bukuu/delete/'.$row->id)?>" onclick="return confirm('Yakin hapus data?')" class="btn btn-danger btn-xs" >
                                                        <i class="pe-7s-shield"></i> Delete</a>
                                                    </button>
                                                </form>
                                                </td>
                                            </tr>
                                            <?php
                                            } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <?php $this->load->view('page/footer'); ?>

</body>

    <!--   Core JS Files   -->
    <?php $this->load->view('page/js'); ?>

<script type="text/javascript">$(document).ready(function(){$("#table-ah").dataTable();});</script>
</html>
