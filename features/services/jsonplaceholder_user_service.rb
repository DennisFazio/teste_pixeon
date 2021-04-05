class JsonPlaceHolderUsers
  @@url = "#{CONFIG_API[AMBIENTE]}/users"

  def get_all_users
    header = { 'content-type': "application/json" }

    HTTParty.get(@@url, headers: header)
  rescue StandardError => e
    puts "Erro ao chamar a get_all_users"
    puts "Error message: #{e}"
  end

  def get_user_by_id(user_id)
    url = "#{@@url}/#{user_id}"
    header = { 'content-type': "application/json" }

    HTTParty.get(url, headers: header)
  rescue StandardError => e
    puts "Erro ao chamar a get_user_users_by_id"
    puts "Error message: #{e}"
  end

  def get_user_by_name(name)
    url = "#{@@url}?name=#{name}"
    header = { 'content-type': "application/json" }

    HTTParty.get(url, headers: header)
  rescue StandardError => e
    puts "Erro ao chamar a get_user_users_by_id"
    puts "Error message: #{e}"
  end

  def put_user(name, email, user_id)
    url = "#{@@url}/#{user_id}"
    header = { 'content-type': "application/json" }
    body = { "name": name,
             "email": email }.to_json

    HTTParty.put(url, headers: header, body: body)
  rescue StandardError => e
    puts "Erro ao chamar a put_user"
    puts "Error message: #{e}"
  end

  def post_user(arquivo)
    header = { 'content-type': "application/json" }

    HTTParty.post(@@url, headers: header, body: arquivo)
  rescue StandardError => e
    puts "Erro ao chamar a post_user"
    puts "Error message: #{e}"
  end

  def delete_by_id(user_id)
    url = "#{@@url}/#{user_id}"
    header = { 'content-type': "application/json" }

    HTTParty.get(url, headers: header)
  rescue StandardError => e
    puts "Erro ao chamar a delete_by_id"
    puts "Error message: #{e}"
  end
end
