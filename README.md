Olá, Tudo bem ?

Segue meu modelo para o teste apresentado. Tentei mostrar algumas tecnicas que conheço. 
Fico a disposição para dúvidas e explicações sobre esse modelo.

Para rodar a automação front_end utilizar 'cucumber -t @hello_word -p Ambiente_Prod'

Para rodar o projeto Web Service API 'cucumber -t @webservice -p Ambiente_Prod'

O relatório HTML com resultado é gerado na pasta: \logs\html Os screenshots estão na pasta: \logs\screenshots Os logs da API em txt estão na pasta: \logs\txt A collection do postman está na pasta: \logs\collection_postman

Obs.: As classes estão instanciados no arquivo 'page_helper' e não no hooks. Acho que fica mais organizado assim.