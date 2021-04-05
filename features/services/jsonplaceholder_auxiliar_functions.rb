class JsonPlaceHolderAuxiliarFunctions
  def retornou_usuarios?(response)
    retorno = true

    retorno = false if response.count == 0 || response.body.empty? == true

    retorno
  rescue StandardError => e
    puts "Erro ao chamar a retornou_usuarios?"
    puts "Error message: #{e}"
  end
end
