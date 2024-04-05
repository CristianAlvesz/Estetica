<!doctype html>
<html lang="pt-br" data-bs-theme="dark">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Estetica</title>
  <link rel="stylesheet" href="estoque.css">
    <link rel="shortcut icon" href="img/senacMG.ico" type="image/x-icon">
  <script
        src="https://code.jquery.com/jquery-3.7.1.js"
        integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous">
    </script>
  <style>
    body {
   
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f8f9fa; /* Altere a cor de fundo conforme necessário */
    }
    .container {
      width: 80%;
      max-width: 1080px;
      padding: 20px;
      background-color: #fff; /* Altere a cor de fundo conforme necessário */
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    button, input[type="text"], input[type="date"], input[type="time"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc; /* Altere a cor da borda conforme necessário */
      border-radius: 5px;
      box-sizing: border-box;
    }
    button {
      background-color: #007bff; /* Altere a cor de fundo do botão conforme necessário */
      color: #fff; /* Altere a cor do texto do botão conforme necessário */
      cursor: pointer;
    }
    button:hover {
      background-color: #0056b3; /* Altere a cor de fundo do botão ao passar o mouse conforme necessário */
    }
    .tabela {
      margin-top: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd; /* Altere a cor da borda conforme necessário */
    }
    th {
      background-color: #007bff; /* Altere a cor de fundo do cabeçalho da tabela conforme necessário */
      color: #fff; /* Altere a cor do texto do cabeçalho da tabela conforme necessário */
    }
    
  </style>
</head>
<body>
  <div class="container">
  <p>Informações do Produto</p>
    <input type="text" name="nome_produto" id="nome_produto" placeholder="Descricao do Produto.." maxlength="45">
    <input type="text" name="lote_produto" id="lote_produto" placeholder="Lote do Produto.." maxlength="5">
    <input type="text" name="curso" id="curso" placeholder="Curso 1 ou 2..">
    <input class="quantidade_produto" type="number" name="quantidade_produto" id="quantidade_produto" placeholder="Quantidade do produto" maxlength="3">
    <p>Data de Validade</p>
    <input class="validade" type="date" name="data_validade" id="data_validade" placeholder="Data de Validade..">
    <button class="adicionar" type="button" name="btnAjax" id="btnAjax">Adicionar</button>
    <div class="mensagem" name="mensagem" id="mensagem"></div>
    <div class="tabela">
      <table>
        <tr>
          <th>ProdutoDescri</th>
          <th>ProdutoQtd</th>
          <th>ProdutoValidade</th>
          <th>ProdutoLote</th>
          <th>Curso</th>
          <th>--------</th>
        </tr>
        <?php require_once("./PDO/carregaTarefas.php"); ?>
      </table>
    </div>
  </div>
</body>
</html>
<script>
  $(document).ready(function(){
    $('#btnAjax').click(function(){
      let mensagem = document.getElementById('mensagem');
      var Nome = $('#nome_produto').val();
      var Lote= $('#lote_produto').val();
      var Quantidade= $('#quantidade_produto').val();
      var Validade= $('#data_validade').val();
      var Curso= $('#curso').val();
      $.post("./PDO/bindValue.php",{
        nome: Nome,
        lote: Lote,
        quantidade: Quantidade,
        validade: Validade,
        curso: Curso,
      })
      .done(function(resposta) {
        mensagem.innerHTML = resposta
        // window.location.href = 'estoque.php'; //
      })
    })
  })
</script>