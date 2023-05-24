<!-- Begin Page Content -->
<div class="container-fluid">

    <?= $this->session->flashdata('pesan'); ?>
    <div class="row">
        <div class="col-lg-12">
            <?php if (validation_errors()) { ?>
            <div class="alert alert-danger" role="alert">
                <?= validation_errors(); ?>
            </div>
            <?php } ?>
            <?= $this->session->flashdata('pesan'); ?>
            <a href="<?= base_url('laporan/cetak_laporan_anggota'); ?>" class="btn btn-primary mb-3"><i
                    class="fas fa-print"></i> </a>
            <table class="table table-stripped">
                <tr>
                    <th>No</th>
                    <th nowrap>Photo</th>
                    <th nowrap>Nama</th>
                    <th nowrap>Email</th>
                    <th nowrap>Bergabung</th>
                    <th nowrap>Status</th>
                    <th nowrap>Alamat</th>
                </tr>
                <?php
                $i = 1;
                foreach ($anggota as $a) { ?>

                <tr>
                    <td><?= $i++; ?></td>
                    <td><img src="<?= base_url('assets/img/profile/') . $a->image; ?>" class="rounded" alt="..."
                            width="50px" height="65px"></td>
                    <td><?= $a->nama; ?></td>
                    <td><?= $a->email; ?></td>
                    <td><?= date('d F Y', $a->tanggal_input); ?></td>
                    <?php if ($a->is_active == 1) {
                            $status = "Aktif";
                        } else {
                            $status = "Tidak Aktif";
                        } ?>
                    <td><?= $status; ?></td>
                    <td><?= $a->alamat; ?></td>
                </tr>
                <?php } ?>
            </table>
        </div>
    </div>
</div>
</div>