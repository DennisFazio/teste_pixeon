# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].sort.each { |file| require file }

module PageObjects
  def dynamic_loading
    @dynamic_loading ||= DynamicLoading.new
  end
end
