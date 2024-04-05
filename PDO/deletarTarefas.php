<?php

$host = "172.16.54.174:3310";
    $username = 'root';
    $password = "";
    $DB_PORT = '3310';
    $BASE = "estoque";
    $id = $_GET['idprodutos'];

//tratamento de erro (exception)
try{
    //tratamento de erros
    $conn = new PDO("mysql:dbname=$BASE; host=$host;charset=utf8",$username,$password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "DELETE FROM produtos WHERE idprodutos = {$id}";
    //utilização do metado EXEC do objeto $conn tipo PDO
    $count = $conn->exec($sql);

    // fechando a conexão
    $conn = null;

    
}catch (Exception $e) {
    echo $e->getMessage();
    $conn = null;
    echo "Deu erro";
}
header("Location: ../estoque.php");
exit();
?>