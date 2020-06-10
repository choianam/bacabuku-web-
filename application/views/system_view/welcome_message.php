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
    <title>Front-End Toko Online by Kursus-PHP.com</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  </head>
  <body>
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
</html>