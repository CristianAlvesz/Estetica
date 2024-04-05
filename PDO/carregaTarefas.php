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
    //tratamento de erros
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "SELECT * FROM produtos WHERE produtosCurso ORDER BY  produtosCurso ASC, produtoDescri ASC";
    //utilização do metado EXEC do objeto $conn tipo PDO
    $result = $conn->query($sql);
    // fechando a conexão
    $conn = null;
    $saida = "";
    if($result){
        $linha = $result->fetch(PDO::FETCH_ASSOC);
        while ($linha){
            if($linha['produtosCurso'] == 1){
            $saida .=
            "<tr>
                <td>{$linha['produtoDescri']}</td>
                <td>{$linha['produtoQtd']}</td>
                <td>{$linha['produtoValidade']}</td>
                <td>{$linha['produtoLote']}</td>
                <td>Estética</td>
                <td><a href='./PDO/deletarTarefas.php?idprodutos={$linha['idprodutos']}'\>Excluir</a></td>
            </tr>";
    $linha = $result->fetch(PDO::FETCH_ASSOC);
        }else if($linha['produtosCurso'] == 2){
            $saida .=
            "<tr>
                <td>{$linha['produtoDescri']}</td>
                <td>{$linha['produtoQtd']}</td>
                <td>{$linha['produtoValidade']}</td>
                <td>{$linha['produtoLote']}</td>
                <td>Cabelereiro</td>
                <td><a href='./PDO/deletarTarefas.php?idprodutos={$linha['idprodutos']}'\>Excluir</a></td>
            </tr>";
    $linha = $result->fetch(PDO::FETCH_ASSOC);
        }
        else{
            $saida .=
            "<tr>
                <td>{$linha['produtoDescri']}</td>
                <td>{$linha['produtoQtd']}</td>
                <td>{$linha['produtoValidade']}</td>
                <td>{$linha['produtoLote']}</td>
                <td>Indefinido</td>
                <td><a href='./PDO/deletarTarefas.php?idprodutos={$linha['idprodutos']}'\>Excluir</a></td>
            </tr>";
    $linha = $result->fetch(PDO::FETCH_ASSOC);
        }
}
   echo $saida;
   $conn = null;
    } else{
        echo "erro";
    }
    // header(opnaal_get_cert_locations)
}catch (Exception $e) {
    echo $e->getMessage();
    $conn = null;
    echo "Deu erro";
}