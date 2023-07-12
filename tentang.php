<!DOCTYPE html>
<html>

<head>
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
    include 'header.php';


    ?>
	<div class="container">
	<div class="row">
		<div class="col s6">
		<h5>Tentang Pupuk Bawang Merah</h5>
		<p>Pupuk Bawang Merah adalah Aplikasi yang menjadi sarana untuk para pembeli atau pecinta Pupuk untuk Bawang Merah yang mereka inginkan , 
		diharapakan aplikasi dapat membantu para pembeli atau pecinta pupuk bawa merah untuk mempermudah mencari terbaiknya.</p>

		</div>
		<div class="col s6">
		<h5>Hubungi Kami</h5>
		<p>Email 	: 11nilarizqina@gmail.com</p>
		<p>Email	: dewisukmowati0@gmail.com</p>
		</div>
		
		<div class="col s12">
		<h5 align="center">Tim Pengembang</h5>
		</div>
		
		<ul class="collection">
    <li class="collection-item avatar">
      <img src="image/dewi.jpg" alt="" class="circle" height="100px" width="100px">
        <h4>Dewi sukmowati</h4>
        <strong><h5>Project Manager, Back-End Programmer</h5></strong>
      <p>line : @Wed2791 <br>
         IG : Wed2791
      </p>
      <a class="secondary-content"><i class="material-icons">perm_identity</i></a>
    </li>
    <li class="collection-item avatar">
      <img src="image/nila.jpg" alt="" class="circle medium">
        <h4>Nila Risqina</h4>
        <strong><h5>Dokumentasi, Front-End Pogrammer</h5></strong>
      <p>line : @nilarizqinaa <br>
         IG : nilarizqinaa
      </p>
      <a class="secondary-content"><i class="material-icons">perm_identity</i></a>
  </ul>
		
	</div>
	</div>
	
    <?php
    include 'footer.php';

    ?>

</html>