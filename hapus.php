<?php
include("./config.php");

if (isset($_POST['deletedata'])) {
    // ambil id dari query string
    $id_articulo = $_POST['delete_id_articulo'];

    // query hapus
    $sql = "DELETE FROM stuck WHERE id_articulo = '$id_articulo'";
    $query = mysqli_query($db, $sql);

    // apa query berhasil dihapus?
    if ($query) {
        header('Location: ./index.php?hapus=sukses');
    } else
        die('Location: ./index.php?hapus=gagal');
} else
    die("El acceso está prohibido...");
