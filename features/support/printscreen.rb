# frozen_string_literal: true

# require "./features/support/entity/email_cartabandonconfig.rb"

class PrintScreen
  def tirar_print(nome_arquivo)
    foto = PrintScreenType.new
    if nome_arquivo.nil?
      foto.nome = "arquivo_#{DateTime.now.strftime("%d/%m/%Y-%H:%M:%S")}"
    else
      foto.nome = nome_arquivo
    end

    foto.caminho = "logs/screenshots/#{foto.nome}.png"
    print = "logs/screenshots/#{foto.nome}.png"
    Capybara.page.save_screenshot(print)
    $filme.push(foto)
  rescue StandardError => e
    puts "PROBLEMA NA FUNÇÃO tira_print"
    puts e.message
  end
end
