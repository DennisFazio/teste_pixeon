# frozen_string_literal: true

######  DADO  ######
Dado("que estou na pagina dynamic_loading") do
  dynamic_loading.load
end

Dado("que estou na pagina de login") do
  pending # Write code here that turns the phrase above into concrete actions
end
######  QUANDO  ######
Quando("clico no botão start") do
  dynamic_loading.click_button_start
end

Quando("tento realizar o login informando {string}, {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

######  ENTÃO  ######

Então("após o carregamento deve ser apresentado o texto {string}") do |texto|
  expect(dynamic_loading.loading_bar_show?).to eq true
  expect(page.has_text?(texto)).to eq true
end

Então("devo visualizar a mensagem {string}") do |mensagem|
  pending # Write code here that turns the phrase above into concrete actions
end
