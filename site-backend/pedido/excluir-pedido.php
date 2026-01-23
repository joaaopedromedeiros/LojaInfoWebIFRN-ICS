<?php
include '../../db.php';

$id = $_GET['id'] ?? null;
if (!$id || !is_numeric($id)) die("ID inválido");

/* Pedido é a tabela filha que pode sempre excluir */
$stmt = $connect->prepare("DELETE FROM Pedido WHERE id=?");
$stmt->bind_param("i", $id);
$stmt->execute();

header("Location: pedidos.php?excluido=1");
exit;
