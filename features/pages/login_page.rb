# frozen_string_literal: true

# Pagina de login
class Login < SitePrism::Page
  element :input_username, "#username"
  element :input_password, "#password"
  element :btn_login, "button", text: "Login"

  set_url "/login"

  def realiza_login(username, password)
    input_username.set username
    input_password.set password
    PrintScreen.new.tirar_print("login")
    btn_login.click
  end
end
