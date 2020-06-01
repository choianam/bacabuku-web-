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
                                    <h4 class="card-title"><?ucfirst($page)?>Buku</h4>
                                    <div class="pull-right">
                                        <a href="<?=site_url('bukuu')?>" clas="btn btn-warning btn-flat">
                                            <i class="fa fa-undo"></i>Kembali
                                        </a>
                                    </div>
                                    <p class="card-category"></p>
                                </div>
                                <div class="card-body table-full-width table-responsive">
                        <div class="row">
                        <?php echo form_open_multipart('bukuu/process')?>
                        
                            <div class="col-md-12">
                            <label>judul_buku *</label>
                            <input type="hidden" name="id" value="<?=$row->id?>">
                            <input type="text" id="judul" name="judul_buku" value="<?=$row->judul_buku?>" class="form-control" required>
                                    <?=form_error('judul_buku')?>   
                            </div>
                        </div>  
                        <div class="row">
                            <div class="col-md-12">
                            <label>gambar_buku *</label>
                                <div class="form-group">
                                    <input type="file" name="gambar_buku" class="form-control" required>
                                    
                                </div>
                            </div>
                        </div>       
                        <div class="row">
                            <div class="col-md-12">
                            <label>file_buku *</label>
                                <div class="form-group">
                                    <input type="file" name="file_buku" value="<?=$row->file_buku?>" class="form-control">
                                    <?=form_error('file_buku')?>
                                </div>
                            </div>
                        </div>  
                        <div class="row">
                            <div class="col-md-12">
                            <label>kategori_buku *</label>
                                <div class="form-group">
                                    <input type="text" name="kategori_buku" value="<?=$row->kategori_buku?>" class="form-control">
                                    <?=form_error('kategori_buku')?>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                            <label>pengarang_buku *</label>
                                <div class="form-group">
                                    <input type="text" name="pengarang_buku" value="<?=$row->pengarang_buku?>" class="form-control">
                                    <?=form_error('pengarang_buku')?>
                                </div>
                            </div>
                        </div>   
                        <div class="row">
                            <div class="col-md-12">
                            <label>penerbit_buku *</label>
                                <div class="form-group">
                                    <input type="text" name="penerbit_buku" value="<?=$row->penerbit_buku?>" class="form-control">
                                    <?=form_error('penerbit_buku')?>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-md-12">
                            <label>jumlah_halaman *</label>
                                <div class="form-group">
                                    <input type="number" name="jumlah_halaman" value="<?=$row->jumlah_halaman?>" class="form-control">
                                    <?=form_error('jumlah_halaman')?>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                            <label>kode_buku</label>
                                <div class="form-group">
                                    <input type="text" id="valuenya" name="kode_buku" value="<?=$row->kode_buku?>" class="form-control" placeholder="Akan dibuat otomastis..." required>
                                    <?=form_error('kode_buku')?>
                                </div>
                                <a href="javascript:void(0)" onclick="ff()" class="btn btn-primary">Generate kode</a>
                                <button type="submit" name="<?=$page?>" onclick="return hapus_confirm()" class="btn btn-success btn-flat">Submit</button>
                            </div>
                        </div>  
                        <?php echo form_close()?>
            </div>
        </div>
    </div>

        <?php $this->load->view('page/footer'); ?>

</body>

    <!--   Core JS Files   -->
    <?php $this->load->view('page/js'); ?>

<script type="text/javascript">$(document).ready(function(){$("#table-ah").dataTable();});</script>
</html>
