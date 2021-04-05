#language: pt

Funcionalidade: Validar os cenarios de back end de acordo com o solicitado no teste
-- Criar uma automação que valide o GET, POST, PUT e Delete da api http://jsonplaceholder.typicode.com/users 
-- Valide o JSON schema e http code das respostas.


@get_user_all @BackEnd
Cenario: Validar o get all
  Quando realizo o get para o end point users sem passar um parametro
  Então deve ter o code response 200
  E devo receber uma lista com todos os users encontrados
  E cada registro de usuario deve conter os campos informados no txt user_structure

@get_user_by_id @BackEnd
Esquema do Cenario: Validar o get por Id do usuário
  Quando realizo o get para o end point users passando o id <id>
  Então deve ter o code response 200
  E devo receber uma lista com todos os users encontrados
  E valido se o id retornado é o id buscado 
  E cada registro de usuario deve conter os campos informados no txt user_structure
  Exemplos:
  |id |
  |1  |
  |5  |
  |200|

@get_user_by_name @BackEnd
Esquema do Cenario: Validar o get por name do usuário
  Quando realizo o get para o end point users passando o name '<name>'
  Então deve ter o code response 200
  E devo receber uma lista com todos os users encontrados
  E valido se o nome buscado é o nome retornado
  E cada registro de usuario deve conter os campos informados no txt user_structure
  Exemplos:
  |name           |
  |Leanne Graham  |
  |Leanne         |


