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

Quando("realizo o put para editar as informações {string},{string} do usuario id {int}") do |name, email, id|
  @response = jsonplaceholder_user.put_user(name, email, id)
end

Quando("realizo o post para registrar um novo usuário de acordo o arquivo {string}") do |arquivo|
  @novo_usuario = File.read(Dir.pwd + "/features/support/generators/fixtures/#{arquivo}.json")
  @response = jsonplaceholder_user.post_user(@novo_usuario)
end

Quando("realizo o delete para delete o usuario {int}") do |id|
  @response = jsonplaceholder_user.delete_by_id(id)
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

Então("devo receber a confirmação que os dados {string},{string} do usuario id {int} foram alterados") do |name, email, id|
  expect(@response["name"]).to eql name
  expect(@response["email"]).to eql email
  expect(@response["id"]).to eql id
end

Então("deve ter o code response {int} ou {int}") do |code1, code2|
  ok_code = jsonplaceholder_auxiliar_functions.code_response_correto?(@response, code1, code2)
  expect(ok_code).to eql true
end

Então("devo receber a confirmação que o usuario foi registrado com os dados enviados") do
  usuario_registrado = jsonplaceholder_auxiliar_functions.usuario_registrado_correto?(@response, JSON.parse(@novo_usuario))

  expect(usuario_registrado).to eql true
end
