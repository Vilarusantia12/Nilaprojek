<!--slider-->
        <div class="slider">
            <ul class="slides">
                <li>
                    <img src="foto/1.jpg">
                    <!-- random image -->
                    <div class="caption left-align">
                        <h3>Pupuk Bawang Merah</h3>
                        <h5 class="light grey-text text-lighten-3">Sulit mencari pupuk Bawang Merah idaman?<br>Temukan dengan mudah di sini</h5>
                        <a class="btn waves-effect waves-light" href="#toko">Belanja Sekarang <i class="material-icons right">shopping_cart</i></a>
                    </div>
                </li>
                <li>
                    <img src="foto/2.jpg">
                    <!-- random image -->
                    <div class="caption left-align">
                        <h3>Pupuk idaman?</h3>
                        <h5 class="light grey-text text-lighten-3">Bagian terbaik dari Pupuk Bawang Merah. Dapatkan bibit dan panduan nya di sini</h5>
                        <a class="btn waves-effect waves-light" href="panduan.php">Panduan Pupuk Bawang Merah
    <i class="material-icons right">library_books</i>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
         <script>
        $(document).ready(function () {
            $('.slider').slider({
                full_width: true
            });

            // Pause slider
            $('.slider').slider('pause');
            // Start slider
            $('.slider').slider('start');
            // Next slide
            $('.slider').slider('next');
            // Previous slide
            $('.slider').slider('prev');
        });
    </script>