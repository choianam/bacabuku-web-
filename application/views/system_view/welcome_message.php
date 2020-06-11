<script>
    $(function(){
      $(".tambah").live("click",function(){
            var id=$(this).attr("id");
            var judul_buku=$(this).attr("judul_buku");
            var pengarang_buku=$(this).attr("pengarang_buku");
            var penerbit_buku=$(this).attr("penerbit_buku");
            
            $("#id").val(id);
            $("#judul_buku").val(judul_buku);
            $("#pengarang_buku").val(pengarang_buku);
            $("#penerbit_buku").val(penerbit_buku);
            
            $("#myModal2").modal("hide");
        })
      })
</script>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>PERPUSTAKAAN</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  </head>
  <body>
  <!--Modal-->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">PERPUSTAKAAN ONLINE</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p> SELAMAT DATANG "<?php echo $this->session->userdata('Username') ?>", ANDA BERHASIL LOGIN SEBAGAI SISWA<b></p>
      </div>
      <div class="modal-footer">
        
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    <?php $this->load->view('system_view/layout/top_menu') ?>
    
    <!-- Tampilkan semua produk -->
    <div class="row">
    <!-- looping products -->
      <?php foreach($daftar_buku as $product) : ?>
      <div class="col-sm-3 col-md-3">
      <div class="thumbnail">
            <img src="<?=base_url()?>uploads/<?=$product->nama_file;?>" style="max-width: 100%; max-height:100%; height:100px">
        <div class="caption">
        <h3 style="min-height:60px;"><?=$product->judul_buku?></h3>
        <p><?=$product->kategori_buku?></p>
        <p><?=$product->pengarang_buku?></p>
        <p><?=$product->penerbit_buku?></p>
        <p>
          <?=anchor('welcome/add_to_cart/' . $product->id, 'Tambah' , [
            'class'  => 'btn btn-primary',
            'role'  => 'button'
          ])?>
        </p>
        </div>
      </div>
      </div>
      <?php endforeach; ?>
    <!-- end looping -->
    </div>
    
  </body>
  <script>
  $('#myModal').modal('show');
  </script>
</html>