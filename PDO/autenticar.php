<?php
//na pagina de conexao iniciar a sessão com o comando abaixo
session_start();
require_once('biblioteca.php');
$host = "172.16.54.174:3310";
    $username = 'root';
    $password = "";
    $DB_PORT = '3310';
    $BASE = "estoque";

    $conn = new PDO("mysql:dbname=$BASE; host=$host;charset=utf8",$username,$password);

//Pegando as informações com POST via ACTION
if(isset($_POST['login_email']) && isset($_POST['login_senha'])){
    $email = trim($_POST['login_email']);
    $senha = trim($_POST['login_senha']);
}else{
    header('Location:' .  $url_sistema . '../index.php'); //tentar novamente
    exit();
} 
//pegar o usario no Banco de dados
$usuario = $conn->query("SELECT * FROM estoque.user WHERE email = '{$email}' AND senha = trim('{$senha}') ");
$res = $usuario->fetchAll(PDO::FETCH_ASSOC);
//CONTANDO A QTD DE USARIOS
$qtd = @count($res);
var_dump($qtd);
//Mostrando na tela as informaçoes coletadas no POST
if($qtd != 0 ){
    $_SESSION['login_email'] = $email;
    //echo $_SESSION['email'];
    //redirecionanDO A PAGINA  COM PHP
    //echo '<script>window.location =' . $url_sistema . 'lagado.php</script>';
    header('Location:' .  $url_sistema . 'estoque.php');  // redireciona apos conectar
}else{  //redirecionamentop a pagina com php 
    header('Location: ' . $url_sistema);
    session_destroy();
    echo "Usario não encontrado";
}