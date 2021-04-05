# frozen_string_literal: true

######  DADO  ######

######  QUANDO  ######

Quando("realizo o get para o end point users sem passar um parametro") do
  @response = jsonplaceholder_user.get_all_users
end

Quando("realizo o get para o end point users passando o id {int}") do |id|
  @id_buscado = id
  @response = jsonplaceholder_user.get_user_by_id(@id_buscado)
end

Quando("realizo o get para o end point users passando o name {string}") do |name|
  @nome_buscado = name
  @response = jsonplaceholder_user.get_user_by_name(@nome_buscado)
end

######  ENTÃO  ######

Então("deve ter o code response {int}") do |code|
  expect(@response.code).to eql code
end

Então("devo receber uma lista com todos os users encontrados") do
  retornou_usuario = jsonplaceholder_auxiliar_functions.retornou_usuarios?(@response)
  expect(retornou_usuario).to eql true
end

Então("cada registro de usuario deve conter os campos informados no txt user_structure") do
  expect(@response.body).to match_json_schema("user_structure")
end

Então("valido se o nome buscado é o nome retornado") do
  expect(@response[0]["name"]).to eql @nome_buscado
end

Então("valido se o id retornado é o id buscado") do
  expect(@response["id"]).to eql @id_buscado
end
