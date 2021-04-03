#language: pt

Funcionalidade: Validar a tela de Settings e verificar se as informações estão aparecendo de acordo com o esperado
-- Eu como usuário quero acessar a tela de settings e visualizar as minhas informações:
-- -- Resumo dos dados de estatisca nos cards no topo da pagina.
-- -- Numero de amigos, fotos e comentários
-- Quero também conseguir visualizar e editar  o dados do meu cadastro

Contexto: Dado que estou logado e na página de Settings
  Dado que estou logado
  E estou na pagina de settings

##### VALIDAÇÃO DOS CARDS #####
@Cards
Cenario: Validar o card 'Traffic'
  Quando visualizo o card "trafifc"
  Então valido se o numero exibido no card é o mesmo que o retornado na API "retur_traffic"
  E se o persentual apresentado no periodo de comparacao esta de acordo com o retorno da API "return_last_period_traffic"
@Cards
Cenario: Validar o card 'New Users'
  Quando visualizo o card "New Users"
  Então valido se o numero exibido no card é o mesmo que o retornado na API "retur_new_users"
  E se o persentual apresentado no periodo de comparacao esta de acordo com o retorno da API "return_last_closed_period_new_users"
@Cards
Cenario: Validar o card 'Sales'
  Quando visualizo o card "Sales"
  Então valido se o numero exibido no card é o mesmo que o retornado na API "retur_new_sales"
  E se o persentual apresentado no periodo de comparacao esta de acordo com o retorno da API "return_last_closed_period_sales"
@Cards
Cenario: Validar o card 'Sales'
  Quando visualizo o card "Performance"
  Então valido se o numero exibido no card é o mesmo que o retornado na API "retur_performance"
  E se o persentual apresentado no periodo de comparacao esta de acordo com o retorno da API "return_last_closed_performance"

  ##### VALIDAÇÃO DADOS MY ACCOUNT #####

  ##### USER INFORMATION #####
  Esquema do Cenario: validar a edição dos campos do quadro User Information
  Quando visualizo o campo '<campo>'
  Então devo verificar se o campo está editável
  E se está seguindo as '<regras>'
  E se a informação alterada está sendo salva corretamente na base
  Exemplos:
    |campo       |regras                                                                                             |
    |username    |todos as letras minusculas, aceitar numeros e letras, aceitar minimo de 3 caracteres e maximo de 20|
    |email Adress|todos as letras minusculas, esta com formato de e-mail valido, aceitar no maximo 30 caracteres     |
    |First Name  |Aceitar no maximo 20 caracteres, não aceitar numeros, aceitar caracteres especiais como acentos    |
    |Last Name   |Aceitar no maximo 80 caracteres, não aceitar numeros, aceitar caracteres especiais como acentos    |

  ##### USER INFORMATION #####
  Esquema do Cenario: validar a edição dos campos do quadro Contact Information
  Quando visualizo o campo '<campo>'
  Então devo verificar se o campo está editável
  E se está seguindo as '<regras>'
  E se a informação alterada está sendo salva corretamente na base
  Exemplos:
    |campo       |regras                                                                                             |
    |username    |todos as letras minusculas, aceitar numeros e letras, aceitar minimo de 3 caracteres e maximo de 20|
    |email Adress|todos as letras minusculas, esta com formato de e-mail valido, aceitar no maximo 30 caracteres     |
    |First Name  |Aceitar no maximo 20 caracteres, não aceitar numeros, aceitar caracteres especiais como acentos    |
    |Last Name   |Aceitar no maximo 80 caracteres, não aceitar numeros, aceitar caracteres especiais como acentos    |

