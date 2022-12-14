<?php
header("Content-type:application/octet-stream/");

header("Content-Disposition:attachment; filename=$title.xls");

header("Pragma: no-cache");

header("Expires: 0");
?>
<h3> Laporan Beasiswa Nasional Masuk Tanggal : <?= date('d F Y'); ?> </h3>
<table border="1" width="100%">
    <thead>
        <tr>
            <th>No</th>
            <th>NIK</th>
            <th>Beasiswa</th>
            <th>Nama</th>
            <th>Kota</th>
            <th>Jenis Kelamin</th>
            <th>Tanggal Masuk Data</th>
        </tr>
    </thead>
    <tbody>
        <?php $i = 1;
        foreach ($semuabeasiswan as $beasiswan) : ?>
            <tr>
                <td><?= $i++; ?></td>
                <td><?= $beasiswan['nik']; ?></td>
                <td><?= $beasiswan['beasiswa']; ?></td>
                <td><?= $beasiswan['nama']; ?></td>
                <td><?= $beasiswan['kota']; ?></td>
                <td><?= $beasiswan['jenis_kelamin']; ?></td>
                <td><?= date('d F Y', $beasiswan['date_created']); ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>

</table>