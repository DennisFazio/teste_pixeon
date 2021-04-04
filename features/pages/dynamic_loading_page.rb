# frozen_string_literal: true

# Pagina de login
class DynamicLoading < SitePrism::Page
  element :btn_start, "button", text: "Start"
  element :bar_loading, "#loading"
  set_url "/dynamic_loading/1"

  def click_button_start
    btn_start.click
  end

  def loading_bar_show?
    return page.has_no_selector? ("#loading")
  end
end
