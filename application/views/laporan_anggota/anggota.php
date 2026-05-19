<div class="container-fluid">

<h3>Laporan Anggota</h3>

<form method="get">

    <input type="text"
    name="nama"
    placeholder="Masukkan nama"
    value="<?= $nama; ?>">

    <button type="submit"
    class="btn btn-primary btn-sm">

    Filter

    </button>

    <a href="<?= site_url('laporan_anggota');?>"
    class="btn btn-secondary btn-sm">

    Reset

    </a>

</form>

<br>

<a href="<?= site_url('anggota/cetak_anggota?nama='.$nama); ?>"
target="_blank"
class="btn btn-success btn-sm">

Cetak PDF

</a>

<table class="table table-bordered mt-3">

<tr>

    <th>No</th>
    <th>Nomor Anggota</th>
    <th>Nama</th>
    <th>Alamat</th>
    <th>Telepon</th>
    <th>Email</th>
    <th>Tanggal Daftar</th>
    <th>Status</th>

</tr>

<?php $no=1; foreach($data as $d): ?>

<tr>
    <td><?= $no++; ?></td>
    <td><?= $d->Nomor_anggota; ?></td>
    <td><?= $d->Nama; ?></td>
    <td><?= $d->Alamat; ?></td>
    <td><?= $d->Telepon; ?></td>
    <td><?= $d->Email; ?></td>
    <td><?= $d->Tanggal_daftar; ?></td>
    <td><?= $d->status; ?></td>
</tr>

<?php endforeach; ?>

</table>

</div>