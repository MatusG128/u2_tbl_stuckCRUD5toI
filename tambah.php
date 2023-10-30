<?php
include("./config.php");

// cek apa tombol daftar udah di klik blom
if (isset($_POST['tambah'])) {
    // ambil data dari form
    $id_articulo = $_POST['id_articulo'];
    $id_provedor = $_POST['id_provedor'];
    $nombre_articulo = $_POST['nombre_articulo'];
    $descripcion = $_POST['descripcion'];
    $cantidad = $_POST['cantidad'];
    $maximos = $_POST['maximos'];
    $minimos = $_POST['minimos'];

    // query
    $sql = "INSERT INTO stuck(id_articulo, id_provedor, nombre_articulo, descripcion, cantidad, maximos, minimos)
    VALUES('$id_articulo', '$id_provedor', '$nombre_articulo', '$descripcion', '$cantidad', '$maximos', '$minimos')";
    $query = mysqli_query($db, $sql);
    
    // cek apa query berhasil disimpan?
    if ($query)
        header('Location: ./index.php?status=sukses');
    else
        header('Location: ./index.php?status=gagal');
} else
    die("El acceso está prohibido...");
