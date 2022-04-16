<?php
$query;
//Aqui colocamos o servidor em que está o nosso banco de dados,
//no nosso exemplo é a conexão com um servidor local, portanto localhost
$servidor = 'localhost';
//Aqui é o nome de usuário do seu banco de dados, root é o servidor inicial e
//básico de todo servidor, mas recomenda-se não usar o usuario root e sim criar um novo usuário
$usuario = 'postgres';
//Aqui colocamos a senha do usuário, por padrão o usuário root vem sem senha,
//mas é altamente recomendável criar uma senha para o usuário root, visto que ele é
//o que tem mais privilégios no servidor
$senha = '123456';
//Aqui criamos a conexão utilizando o servidor, usuario e senha,
//caso dê erro, retorna um erro ao usuário.
$conexao = pg_connect("host=localhost port=5432 dbname=teste user=postgres password=123456") or
  die("Não foi possível conectar ao servidor PostGreSQL");
//caso a conexão seja efetuada com sucesso, exibe uma mensagem ao usuário
echo "Conexão efetuada com sucesso!!";

$sql = "INSERT INTO localizacao_dep (dnumero_fk, dlocal) 
VALUES 
(49, 'Araçatuba')";

$result = pg_query($conexao, $sql);

if ($result) {
  pg_query($conexao, "COMMIT");
  echo "Registro Inserido com SUCESSO";
} else {
  echo "Deu BO";
}
