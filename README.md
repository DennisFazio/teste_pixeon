Olá, Tudo bem ?

Segue meu modelo para o teste apresentado. Tentei mostrar algumas tecnicas que conheço. 
Fico a disposição para dúvidas e explicações sobre esse modelo.

Utiizei Ruby, Capybara, Cucumber, HTTParty, Postman

Versão do Ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32] 
* Para instalar o Bundler (gerenciador de extensões) rodar o comando abaixo:
gem install bundler -v 1.11.2

* Para instalar todas as extensões necessárias para o projeto rodar o comando abaixo:
bundle install

* Para rodar todos os cenários da automação front_end utilizar 'cucumber -t @Frontend -p Ambiente_Prod'

    Pode rodar uma por uma também trocando a tag -t @hello_word ou -t @login

* Para rodar o projeto Web Service API 'cucumber -t @BackEnd -p Ambiente_Prod'
    
    Pode rodar uma por uma também trocando a tag -t @get_user_by_name ou -t @get_user_by_id ...

* O relatório HTML com resultado é gerado na pasta: \logs\html 
* Os screenshots estão na pasta: \logs\screenshots 
* A collection do postman está na pasta: \logs\collection_postman

Obs.: As classes estão instanciados no arquivo 'page_helper' e não no hooks. Acho que fica mais organizado assim.
