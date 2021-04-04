#language: pt

Funcionalidade: Validar os cenarios de back end de acordo com o solicitado no teste
-- Criar uma automação que valide o GET, POST, PUT e Delete da api http://jsonplaceholder.typicode.com/users 
-- Valide o JSON schema e http code das respostas.


@get_user_all @BackEnd
Cenario: Validar o get all
  Quando realizo o get para o end point users sem passar um parametro
  Então deve ter o code response 200
  E devo receber uma lista com todos os users cadastrados
  E cada registro de usuario deve conter os campos informados no txt user_structure
  


