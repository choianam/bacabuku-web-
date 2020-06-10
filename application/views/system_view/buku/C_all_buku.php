<?php $this->load->view('page/header'); ?>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs/jq-3.2.1/dt-1.10.16/r-2.2.1/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/bs/jq-3.2.1/dt-1.10.16/r-2.2.1/datatables.min.js"></script>

<!-- load sidebar in page/sidebar -->
<?php $this->load->view('page/sidebar'); ?>

<!-- Load navbar in page/navbar -->
<?php $this->load->view('page/navbar'); ?>

<script>
    function ff(){
        var campur = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZ";
        var panjang = 4;
        var prefix = 'BK';
        var buku = $("#judul").val();
        var f = buku.toUpperCase();
        var l = f.split(" ").join("");
        var z = l.substr(0,7);
      console.log(z);
        
        var random_all = '';
        for (var i=0; i<panjang; i++) {
            var hasil = Math.floor(Math.random() * campur.length);
            random_all += campur.substring(hasil,hasil+1);
        }
        $("#valuenya").val(prefix+"-"+z+""+random_all+"");
    };

    function hapus_confirm(){
  var msg;
  msg= "Anda yakin data sudah benar ?? " ;
  var agree=confirm(msg);
  if (agree)
  return true ;
  else
  return false ;
}
</script>


<div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                    
                            <?php if ( NULL !== $this->session->flashdata('message')){echo $this->session->flashdata('message');} ?>
                            <div class="card card-plain table-plain-bg">
                                <div class="card-header ">
                                    <h4 class="card-title">Buku</h4>
                                    <div class="pull-right">
                                        <a href="<?=site_url('bukuu')?>" clas="btn btn-warning btn-flat">
                                            <i class="fa fa-undo"></i>Kembali
                                        </a>
                                    </div>
                                    <p class="card-category"></p>
                                </div>
                                <div class="card-body table-full-width table-responsive">
                        <div class="row">
                        <form method="post" enctype="multipart/form-data" action="<?php echo base_url(); ?>bukuu/create">
                            <div class="col-md-12">
                            <label>File Foto *</label>
                            <input type="file" name="filefoto">  
                            </div>
                        </div>  
                        <div class="row">
                            <div class="col-md-12">
                            <label>Judul *</label>
                                <div class="form-group">
                                <input type="text" name="judul_buku">
                                        
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                            <label>Kategori *</label>
                                <div class="form-group">
                                <input type="text" name="kategori_buku">
                                        
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                            <label>Pengarang Buku *</label>
                                <div class="form-group">
                                    <input type="text" name="Pengarang Buku">
                                </div>
                            </div>
                        </div>   
                        <div class="row">
                            <div class="col-md-12">
                            <label>Penerbit Buku *</label>
                                <div class="form-group">
                                    <input type="text" name="Penerbit Buku">
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-md-12">
                            <label>Jumlah Halaman *</label>
                                <div class="form-group">
                                    <input type="number" name="Jumlah Halaman" >
                                    
                                </div>
                            </div>
                        </div>     
                        <div class="form-group">
                                <button type="submit" onclick="return hapus_confirm()" class="btn btn-success btn-flat">Submit</button>
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
