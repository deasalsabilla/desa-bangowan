<?php
include "../../assets/conn/koneksi.php";

$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM tb_img WHERE id='$id'");
$data = mysqli_fetch_assoc($query);
$wisata2 = $data['wisata'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../assets/app/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../assets/icons/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../dist/css/index.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="../../plugins/ekko-lightbox/ekko-lightbox.css">
    <link rel="shortcut icon" href="icon/logodesa.ico">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <title>Edit - Kelola Foto</title>
</head>

<body>

    <div class="container col-md-6">
        <div class="card">
            <div class="card-header bg-primary text-white">
                Ubah Data Kelola Foto
            </div>
            <div class="card-body">
                <form action="" method="POST" class="form-item">
                    <div class="form-group">
                        <label for="postimage">Gambar</label>
                        <input type="text" name="postimage" class="form-control col-md-9" value="<?php echo $data['postimage']; ?>" readonly>
                    </div> <br>
                    <div class="form-group">
                        <label for="nama">Nama Foto</label>
                        <input type="text" name="nama" class="form-control col-md-9" value="<?php echo $data['nama']; ?>">
                    </div> <br>
                    <div class="form-group">
                        <label for="caption">Deskripsi</label>
                        <input type="text" name="caption" class="form-control col-md-9" value="<?php echo $data['caption']; ?>">
                    </div> <br>
                    <?php
                    include "../../assets/conn/koneksi.php";
                    // Langkah 3: Bangun elemen <select> dengan opsi yang diambil dari database
                    echo '<div class="form-group">';
                    echo '<label for="wisata">Wisata</label>';
                    echo '<select class="form-control" name="wisata">';
                    echo '<option value="">--Pilih--</option>';

                    $sql = "SELECT nama, nm_kecil FROM tb_wisata"; // Ganti 'nama_tabel' dengan nama tabel Anda
                    $result = mysqli_query($koneksi, $sql);

                    while ($row = mysqli_fetch_assoc($result)) {
                        $value = $row['nm_kecil'];
                        $label = $row['nama'];

                        // Periksa apakah opsi saat ini harus ditandai sebagai "selected"
                        $selected = ($wisata2 == $value) ? "selected" : "";

                        echo '<option value="' . $value . '" ' . $selected . '>' . $label . '</option>';
                    }

                    echo '</select>';
                    echo '</div>';

                    ?>
                    <button type="submit" class="btn btn-primary" name="simpan" value="simpan" onclick="return confirm('Apakah Anda Yakin Ingin Mengubah Data?')">Simpan</button>
                    <button type="reset" class="btn btn-danger">Batal</button>
                    <button class="btn btn-secondary"><a href="index.php" style="color:#ffff; text-decoration:none;">Kembali</a></button>
                </form>
            </div>


            <?php
            include "../../assets/conn/koneksi.php";

            if (isset($_POST['simpan'])) {
                $nama       = $_POST['nama'];
                $caption     = $_POST['caption'];
                $wisata = $_POST['wisata'];

                $hasil = mysqli_query($koneksi, "UPDATE tb_img SET nama = '$nama', caption = '$caption', wisata = '$wisata' WHERE id= '$id'") or die(mysqli_error(($koneksi)));

                if ($hasil) {
                    echo "<script> alert('Data Berhasil diubah')</script>";
                    header("refresh:0,index.php");
                } else {
                    echo "<script> alert('Data Gagal diubah')</script>";
                    header("refresh:0,index.php");
                }
            }
            ?>


            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>

</html>