# frozen_string_literal: true

######  DADO  ######
Dado("que estou na pagina dynamic_loading") do
  dynamic_loading.load
end

Dado("que estou na pagina de login") do
  login.load
end
######  QUANDO  ######
Quando("clico no botão start") do
  dynamic_loading.click_button_start
end

Quando("tento realizar o login informando {string}, {string}") do |username, password|
  login.realiza_login(username, password)
end

######  ENTÃO  ######

Então("após o carregamento deve ser apresentado o texto {string}") do |texto|
  screen.tirar_print("loading_bar_on")
  expect(dynamic_loading.loading_bar_show?).to eq true
  expect(page.has_text?(texto)).to eq true
end

Então("devo visualizar a mensagem {string}") do |mensagem|
  expect(page.has_text?(mensagem)).to eq true
end
