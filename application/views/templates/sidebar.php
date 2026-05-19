<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
            <div class="sidebar-brand-icon rotate-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div calss="sidebar-brand-text mx-3">perpustakaan</div>
        </a>
     <hr class="sidebar-divider my-0">

    <li class="nav-item active">
        <a class="nav-link" href="<?= site_url('dashboard'); ?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('kategori'); ?>">
            <i class="fas fa-fw fa-list"></i>
            <span>Kategori</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('anggota'); ?>">
            <i class="fas fa-fw fa-users"></i>
            <span>Anggota</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('buku'); ?>">
            <i class="fas fa-fw fa-book"></i>
            <span>Buku</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('peminjaman'); ?>">
            <i class="fas fa-fw fa-exchange-alt"></i>
            <span>Peminjaman</span>
        </a>
    </li>

    <hr class="sidebar-divider my-0">

    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('laporan/peminjaman'); ?>">
            <i class="fas fa-file-alt"></i>
            <span>Laporan Peminjaman</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('laporan_buku'); ?>">
            <i class="fas fa-file-alt"></i>
            <span>Laporan Buku</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('laporan_anggota'); ?>">
            <i class="fas fa-file-alt"></i>
            <span>Laporan Anggota</span>
        </a>
    </li>

    <hr class="sidebar-divider">

</ul>

<div id="content-wrapper" class="d-flex flex-column">
<div id="content">