# frozen_string_literal: true

require 'factory_bot'
require 'factory_bot_rails'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.definition_file_paths = ['spec/support/factories']
  end
end
