# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].sort.each { |file| require file }

module PageObjects
  def loginpage
    @loginpage ||= LoginPage.new
  end
end
