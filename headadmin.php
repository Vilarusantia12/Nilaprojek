  <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
<div class="navbar-fixed">
<nav class="cyan">
        <div class="navbar-wrapper container">
            <a href="adminhome.php" class="brand-logo left">Pupuk Bawang Merah - Admin</a>
            <ul class="right">
                <li> <a href="upgrade.php">Tambah Pupuk</a></li>
                <li> <a href="dateup.php">Perbaharui Pupuk</a></li>
                <?php
            if(isset($_SESSION['admin']))
                echo "<li> <a class='waves effect waves-light btn red darken-1' href='logout.php'>Sign Out</a></li>";
                else echo "<li> <a class='waves effect waves-light btn teal' href='signin.php'>Sign In</a></li>";
            ?>
                <li><a href="index.php">Lihat Toko</a></li>
            </ul>
        </div>
</nav>
</div>