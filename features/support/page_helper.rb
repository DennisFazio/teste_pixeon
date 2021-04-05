# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].sort.each { |file| require file }

module PageObjects
  def dynamic_loading
    @dynamic_loading ||= DynamicLoading.new
  end

  def login
    @login ||= Login.new
  end

  def screen
    @screen ||= PrintScreen.new
  end

  def jsonplaceholder_user
    @jsonplaceholder_user ||= JsonPlaceHolderUsers.new
  end

  def jsonplaceholder_auxiliar_functions
    @jsonplaceholder_auxiliar_functions ||= JsonPlaceHolderAuxiliarFunctions.new
  end
end
