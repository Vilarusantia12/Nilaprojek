<!DOCTYPE html>
<html>

<head>
    <title>Pupuk Bawang Merah-Belanja Bibit Tanaman Hias Mudah dan Aman</title>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
    <?php
    session_start();
    include 'connect.php';
    if(empty($_SESSION['user'])&&empty($_SESSION['admin'])) echo "<script>document.location.href='forbid.php'</script>";
    $no=0;
    include 'anti-inject.php';
    $ids=$_GET['idtransaksi'];
    $id=anti_injection($ids);
    $nomor=$id;
    $transs=mysqli_query($connect,"select * from transaksi where ID_Transaksi='$id'");
    $trans = mysqli_fetch_assoc($transs);
    $idpelanggan = $trans['id_customer'];
    if(isset($_SESSION['user'])&&$_SESSION['idcust']!=$idpelanggan) echo "<script>document.location.href='forbid.php'</script>";
    $pelanggans=mysqli_query($connect,"select * from customer where ID_customer='$idpelanggan'");
    $pelanggan=mysqli_fetch_array($pelanggans);
if(isset($_SESSION['admin'])){
    include 'headadmin.php';} else{
    include 'header.php';}
    $detils=mysqli_query($connect,"Select sum(jumlah_beli) as jumlahs from detail_transaksi where transaksi_id='$id'");
    $detil=mysqli_fetch_assoc($detils);
    ?>
        <br>

        <div class="container">
            <div class="row">
                <div class="col s3">
                    Nomor Transaksi
                </div>
                <div class="col s6">
                    : #
                    <?php echo $trans['ID_Transaksi']?>
                </div>
            </div>
            <div class="row">
                <div class="col s3">
                    Waktu Transaksi
                </div>
                <div class="col s5">
                    :
                    <?php echo $trans['Tanggal_transaksi']?>
                </div>
                <div class="col s4">
                    <?php    
                if($trans['Konfirmasi']==1) echo "<a class='waves-effect waves-light btn teal'>Sudah Dikonfirmasi</a>"; else echo "<a class='waves-effect waves-light btn cyan'>Belum Dikonfirmasi</a>";?>
                </div>
            </div>
            <div class="row">
                <div class="col s3">
                    Nama Pelanggan
                </div>
                <div class="col s4">
                    :
                    <?php echo $pelanggan['nama']?>
                </div>
                <div class="col s5">
                    <?php if($trans['Konfirmasi']==1) echo "<h7 class='black-text cyan lighten-4'>------------Waktu Konfirmasi : ".$trans['waktu_konfirmasi']."-----------</h7>"; else echo " ";?>
                </div>
            </div>
            <div class="row">
                <div class="col s3">
                    Alamat Pengiriman
                </div>
                <div class="col s8">
                    :
                    <?php echo $pelanggan['alamat']?>
                </div>
                <div class="col s1">
                </div>
            </div>

            <center>------------------------------------------------------------------------------------------<strong><h5>Rincian Belanja</h5></strong>------------------------------------------------------------------------------------------</center>
            <table>
                <thead>
                    <th>No.</th>
                    <th></th>
                    <th>Nama Pupuk</th>
                    <th>Harga</th>
                    <th>Jumlah Pembelian</th>
                    <th>Subtotal</th>

                </thead>
                <?php 
            $jumlah=0;
            $total=0;
            $detail=mysqli_query($connect,"Select * from detail_transaksi where transaksi_id='$nomor'");
            while($ulang=mysqli_fetch_assoc($detail)){
            $no++;
            $idtanaman=$ulang['tanaman_id'];
            $query = mysqli_query($connect,"SELECT * FROM tanaman WHERE ID_Tanaman ='$idtanaman'");
            $tanaman = mysqli_fetch_array($query);?>
                    <tr>
                        <td>
                            <?php echo $no?>
                        </td>
                        <td>
                            <img class="materialboxed" data-caption="<?php echo $tanaman['Nama_Tanaman']?> - Rp <?php echo $tanaman['Harga_Tanaman']?>/pcs" width="100" src="image/<?php echo $tanaman['Gambar']?>">
                        </td>
                        <td>
                            <a href="tanaman.php?idtanaman=<?php echo $tanaman['ID_Tanaman']?>">
                                <?php echo $tanaman['Nama_Tanaman']?>
                            </a>
                        </td>
                        <td>Rp 
                            <?php
                 $tots=$tanaman['Harga_Tanaman'];
            echo number_format("$tots",0,",",".")
         ?>,-
                        </td>
                        <td>
                            <?php echo $ulang['jumlah_beli']?>
                        </td>
                        <td>Rp 
                            <?php
                 $totss=($tanaman['Harga_Tanaman']*$ulang['jumlah_beli']);
            echo number_format("$totss",0,",",".")
         ?>,-
                        </td>
                    </tr>
                    <?php $total=$total+($tanaman['Harga_Tanaman']*$ulang['jumlah_beli']);
                    $jumlah=$jumlah+$ulang['jumlah_beli'];?>
                        <?php } ?>
                            <tr class="black-text cyan lighten-5">
                                <td><strong>Total Belanja</strong></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <?php echo "<strong>$jumlah</strong>"?> buah </td>
                                <td>
                                    Rp <strong>
                                    <?php
                        
            echo number_format("$total",0,",",".")
         ?>,-
                                </strong>
                                </td>
                            </tr>

            </table>
            <script>
                $(document).ready(function () {
                    $('.materialboxed').materialbox();
                });
            </script>
            <button class="waves-effect waves-light btn right" onclick="window.print()">Cetak Bukti Transaksi</button>
        </div>
    
</body>
<?php include 'footer.php'?>

</html>