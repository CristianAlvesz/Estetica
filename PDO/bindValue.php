<?php

$host = "172.16.54.174:3310";
    $username = 'root';
    $password = "";
    $DB_PORT = '3310';
    $BASE = "estoque";

//tratamento de erro (exception)
try{
    // A CONEXAO 
    $conn = new PDO("mysql:dbname=$BASE; host=$host;charset=utf8",$username,$password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // vartiaves via POST ou GET
    $nome = $_POST['nome'];
    $lote = $_POST['lote'];
    $quantidade = $_POST['quantidade'];
    $curso = $_POST['curso'];
    $validade = $_POST['validade'];
    
    echo $nome, " ", $lote, " ", $quantidade, " ",$validade;

    //utilização do métado prepare
    $prepare = $conn->prepare('INSERT INTO produtos (produtoDescri, produtoQtd, produtoValidade, produtoLote, produtosCurso) VALUES (:nome, :quantidade, :validade, :lote, :curso)');
    //bindParam("campo", $variavel, tipo_da_variavel); - PDO:PARAM_STR para STRINGS
    $prepare->bindValue(':nome', $nome, PDO::PARAM_STR);
    $prepare->bindValue(":lote", $lote, PDO::PARAM_STR);
    $prepare->bindValue(":quantidade", $quantidade, PDO::PARAM_STR);
    $prepare->bindValue(":curso", $curso, PDO::PARAM_STR);
    $prepare->bindValue(":validade", $validade, PDO::PARAM_STR);
    $count = $prepare->execute();
    //fechando a conexão com o Banco de Dados
    $conn = null;
    echo "<br> {$count} linhas foram inseridas <br>";
    
}catch(Exception $error){

    $conn=null;
    echo $error->getMessage();
}
?>    