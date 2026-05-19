<div class="container-fluid">

<h3>Laporan Buku</h3>

<form method="get">

    <input type="text"
    name="penulis"
    placeholder="Masukkan penulis"
    value="<?= $penulis; ?>">

    <button type="submit"
    class="btn btn-primary btn-sm">

    Filter

    </button>

    <a href="<?= site_url('laporan_buku');?>"
    class="btn btn-secondary btn-sm">

    Reset

    </a>

</form>

<br>

<a href="<?= site_url('buku/cetak_buku?penulis='.$penulis); ?>"
target="_blank"
class="btn btn-success btn-sm">

Cetak PDF

</a>

<table class="table table-bordered mt-3">

<tr>

    <th>No</th>
    <th>Kode Buku</th>
    <th>Judul Buku</th>
    <th>Penulis</th>
    <th>Penerbit</th>
    <th>Tahun</th>
    <th>Kategori</th>
    <th>Stok</th>

</tr>

<?php $no=1; foreach($data as $d): ?>

<tr>

    <td><?= $no++; ?></td>

    <td><?= $d->kode_buku; ?></td>

    <td><?= $d->judul_buku; ?></td>

    <td><?= $d->penulis; ?></td>

    <td><?= $d->penerbit; ?></td>

    <td><?= $d->tahun; ?></td>

    <td><?= $d->nama_kategori; ?></td>

    <td><?= $d->stok; ?></td>

</tr>

<?php endforeach; ?>

</table>

</div>