<?php
include("./config.php");

// cek apa tombol daftar udah di klik blom
if (isset($_POST['edit_data'])) {
    // ambil data dari form
    $id_articulo = $_POST['edit_id_articulo'];
    $nombre_articulo = $_POST['edit_nombre_articulo'];
    $id_provedor = $_POST['edit_id_provedor'];
    $unidad_medida = $_POST['edit_unidad_medida'];
    $minimos = $_POST['edit_minimos'];
    $descripcion = $_POST['edit_descripcion'];
    $maximos = $_POST['edit_maximos'];
    $cantidad= $_POST['edit_cantidad'];


    // query
    $sql = "UPDATE stuck SET nombre_articulo=' $nombre_articulo', id_provedor='$id_provedor', unidad_medida='$unidad_medida', minimos='$minimos', descripcion='$descripcion', maximos='$maximos',cantidad='$cantidad ' WHERE id_articulo = '$id_articulo'";
    $query = mysqli_query($db, $sql);

    // cek apa query berhasil disimpan?
    if ($query)
        header('Location: ./index.php?update=sukses');
    else
        header('Location: ./index.php?update=gagal');
} else
    die("Akses dilarang...");
