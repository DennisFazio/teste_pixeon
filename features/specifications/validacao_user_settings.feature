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
  Quando visualizo o campo '<campo>' do quadro User Information 
  Então devo verificar se o campo está editável
  E se está seguindo as '<regras>'
  E se a informação alterada está sendo salva corretamente na base
  Exemplos:
    |campo       |regras                                                                                                         |
    |username    |todos as letras devem ficar minusculas, aceitar numeros e letras, aceitar minimo de 3 caracteres e maximo de 20|
    |email Adress|todos as letras devem ficar minusculas, estar com formato de e-mail valido, aceitar no maximo 30 caracteres    |
    |First Name  |Aceitar no maximo 20 caracteres, não aceitar numeros, aceitar caracteres especiais como acentos                |
    |Last Name   |Aceitar no maximo 80 caracteres, não aceitar numeros, aceitar caracteres especiais como acentos                |

##### USER INFORMATION #####
Esquema do Cenario: validar a edição dos campos do quadro Contact Information
  Quando visualizo o campo '<campo>' do quadro Contact Information
  Então devo verificar se o campo está editável
  E se está seguindo as '<regras>'
  E se a informação alterada está sendo salva corretamente na base
  Exemplos:
    |campo       |regras                                                                                          |
    |address     |não aceitar em branco, aceitar numeros e letras, aceitar minimo de 5 caracteres e maximo de 80  |
    |city        |não aceitar em branco, aceitar somente letras, aceitar minimo de 3 caracteres e maximo de 30    |
    |country     |não aceitar em branco, aceitar somente letras, aceitar minimo de 3 caracteres e maximo de 30    |
    |postal code |não aceitar em branco, Aceitar somente numeros, aceitar somente 8 caracteres                    |

#####  ABOUT ME  #####
Esquema do Cenario: validar a edição dos campos do quadro About Me
  Quando visualizo o campo '<campo>' do quadro About Me
  Então devo verificar se o campo está editável
  E se está seguindo as '<regras>'
  E se a informação alterada está sendo salva corretamente na base de dados Users
  Exemplos:
    |campo       |regras                                                                                   |
    |about me    |aceitar em branco, aceitar numeros e letras, maximo de 500, Aceitar emojis|

##### VALIDAÇÃO DADOS A DIREITA DA TELA RESUMO SOBRE O USUÁRIO #####
Cenario: validar se a foto exibida é a mesma que a foto cadastrada
  Quando visualizo o campo da foto do usuário
  Então devo verificar se a foto exibida é a mesma que a cadastrada no banco de dados Users

Cenario: validar o total de Friends, Photos, Comments do usuário
  Quando visualizo o total de Friends, Photos, Comments do usuário
  Então o total de Friends deve ser o mesmo que o valor retornado na API 'total_friens_user'
  E o total de Photos deve ser o mesmo que o valor retornado na API 'total_photos_user'
  E o total de Comments deve ser o mesmo que o valor retornado na API 'total_comments_user'

Cenario: validar o nome, sobrenome e o endereço do usuário
  Quando visualizo os campos Nome e Endereço
  Então o nome de ser o concatenação dos campos First_Name e Last_Name registrados no banco
  E o Endereço deve ser a concatenação dos campos city e Country resgistrados no banco

Cenario: validar o local de trabalho e a formação Academica
  Quando visualizo os Local de Trabalho e a formação academica
  Então o campo local de trabalho deve ser o mesmo que o registrado na base de dados Users tabela Works
  E o campo formação Academica deve ser o mesmo que o registrado na base de dados Users tabelas Schools

Cenario: validar o resumo do usuário
  Quando visualizo o resumo do usuário
  Então deve exibir os 200 primeiros caractes do texto salvo no banco de dados Users - About Me 
  E caso esteja em branco o campo no banco esse quadro resumo não deve ser exibido

