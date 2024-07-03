<div class="container-fluid">
    <div class="row">
        <div class="col-md2"></div>
        <div class="col-md8">
            <div class="btn btn-sm btn-success">
                <?php
                $grand_total = 0;
                if ($keranjang = $this->cart->contents()) {
                    foreach ($keranjang as $item) {
                        $grand_total = $grand_total + $item['subtotal'];
                    }

                    echo "<h4>Total Belanja Anda: Rp. " . number_format($grand_total, 0, ',', '.');
                    ?>
                </div><br><br>
                <h3>Input Alamat Pengiriman dan Pembayaran</h3>

                <br>

                <form method="post" action="<?php echo base_url(('dashboard/proses_pesanan')) ?>">

                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" name="nama" placeholder="Nama Lengkap Anda" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>No. Meja</label>
                        <input type="text" name="meja" placeholder="Nomor  Meja Anda" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Pilih BANK</label>
                        <select class="form-control">
                            <option>BCA - 5015251562</option>
                            <option>BNI - 172421987462748</option>
                            <option>BRI - 134859322183192</option>
                            <option>Mandiri - 1943421542345</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-sm btn-primary mb-3">Pesan</button>
                </form>
                <?php
                } else {
                    echo "<h4>Keranjang Belanja Anda Masih Kososng";
                }
                ?>
        </div>
        <div class="col-md2"></div>
    </div>
</div>