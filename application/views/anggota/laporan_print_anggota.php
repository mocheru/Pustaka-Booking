<!DOCTYPE html>
<html>

<head>
    <title></title>
</head>

<body>
    <style type="text/css">
    .table-data {
        width: 100%;
        border-collapse: collapse;
    }

    .table-data tr th,
    .table-data tr td {
        border: 1px solid black;
        font-size: 11pt;
        font-family: Verdana;
        padding: 10px 10px 10px 10px;
    }

    .table-data th {
        background-color: grey;
    }

    h3 {
        font-family: Verdana;
    }
    </style>

    <h3>
        <center>LAPORAN DATA Anggota</center>
    </h3>
    <br />
    <table class="table-data">
        <thead>
            <tr>
                <th>No</th>
                <th nowrap>Nama</th>
                <th nowrap>Email</th>
                <th nowrap>Bergabung</th>
                <th nowrap>Status</th>
                <th nowrap>Alamat</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            foreach ($anggota as $l) {
            ?>
            <tr>
                <td scope="row"><?= $no++; ?></td>
                <td><?= $l->nama; ?></td>
                <td><?= $l->email; ?></td>
                <td><?= date('d F Y', $l->tanggal_input); ?></td>
                <?php if ($l->is_active == 1) {
                        $status = "Aktif";
                    } else {
                        $status = "Tidak Aktif";
                    } ?>
                <td><?= $status; ?></td>
                <td><?= $l->alamat; ?></td>
                <?php
            }
                ?>
        </tbody>
    </table>

    <script type="text/javascript">
    window.print();
    </script>

</body>

</html>