<?php

$host = '192.168.100.20';
$user = 'lojinhainfowebfrontend';
$password = '123456';
$dbname = 'loja_db';

$connect = mysqli_connect($host, $user, $password, $dbname);

if (!$connect) {
    die("Erro ao conectar ao banco de dados: " . mysqli_connect_error());
}

?>