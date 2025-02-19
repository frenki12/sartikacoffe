<div class="container-fluid">

    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<?php echo base_url('assets/img/slider1.jpg') ?>" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<?php echo base_url('assets/img/slider2.jpg') ?>" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="row text-center mt-4">

        <?php foreach ($manual_brew as $brg): ?>
            <div class="card ml- mb-3" style="width: 15rem;">
                <img src="<?php echo base_url() . '/uploads/' . $brg->gambar ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title mb-1"><?php echo $brg->nama_brg ?></h5>
                    <small><?php echo $brg->keterangan ?></small><br>
                    <span class="badge text-bg-success mb-3">Rp. <?php echo number_format( $brg->harga), 0, ',', '.' ?></span>
                    <div class="d-flex justify-content-between">
                    <?php echo anchor('dashboard/tambah_ke_keranjang/'. $brg->id_brg,'<div class="btn btn-sm btn-primary">Tambah ke Keranjang</div>') ?>
                    <?php echo anchor('dashboard/detail/'. $brg->id_brg,'<div class="btn btn-sm btn-success">Detail</div>') ?>
                </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>