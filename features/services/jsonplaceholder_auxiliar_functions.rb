# require "./features/support/entity"

class JsonPlaceHolderAuxiliarFunctions
  def retornou_usuarios?(response)
    retorno = true

    retorno = false if response.count == 0 || response.body.empty? == true

    retorno
  rescue StandardError => e
    puts "Erro ao chamar a retornou_usuarios?"
    puts "Error message: #{e}"
  end

  def code_response_correto?(response, code1, code2)
    retorno = false

    if response.code == code1 || response.code == code2
      retorno = true
    end

    retorno
  end

  def devolve_objeto_usertype(json)
    obj = UserType.new

    obj.name = json["name"]
    obj.username = json["username"]
    obj.email = json["email"]
    obj.street = json["address"]["street"]
    obj.suite = json["address"]["suite"]
    obj.city = json["address"]["city"]
    obj.zipcode = json["address"]["zipcode"]
    obj.lat = json["address"]["geo"]["lat"]
    obj.lng = json["address"]["geo"]["lat"]
    obj.phone = json["phone"]
    obj.website = json["website"]
    obj.bs = json["company"]["bs"]
    obj.company_name = json["company"]["name"]
    obj.catchPhrase = json["company"]["catchPhrase"]
  end

  def usuario_registrado_correto?(response, novo_usuario)
    user_post = devolve_objeto_usertype(novo_usuario)
    user_retorno = devolve_objeto_usertype(response)

    user_post == user_retorno
  end
end
