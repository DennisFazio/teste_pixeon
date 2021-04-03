#language: pt

Funcionalidade: Validar os cenarios de acordo com o solicitado no teste
--No site Frontend 1 é esperado uma automação que clique no botão start, aguarde pelo carreganeto
---- Faça uma validação que o texto “Hello World!” foi apresentado.
---- Valide um login (com sucesso e com erro)


##### VALIDAÇÃO HELLO WORD #####
@hello_word @Frontend
Cenario: Validar o texto Hello Word após o Start
  Dado que estou na pagina dynamic_loading hum
  Quando clico no botão "Start"
  Então após o carregamento deve ser apresentado o "Hello World!"

@hello_word @Frontend
Esquema do Cenario: validar o login do usuário
  Dado que estou na pagina de login
  Quando tento realizar o login informando '<username>', '<password>'
  Então devo visualizar a '<mensagem>'
  Exemplos:
  |username |password            |mensagem                      |
  |tomsmith |SuperSecretPassword!|You logged into a secure area!|
  |tomsmith |                    |Your password is invalid!     |
  |tomsmith |123456              |Your password is invalid!     |
  |         |SuperSecretPassword!|Your username is invalid!     |
  |joao123  |SuperSecretPassword!|Your username is invalid!     |