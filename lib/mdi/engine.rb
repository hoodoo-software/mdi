# frozen_string_literal: true

module Mdi
  class Engine < ::Rails::Engine
    config.autoload_paths = %W[#{root}/app/helpers #{root}/app/models].freeze

    initializer "mdi.helpers" do
      # ActiveSupport.on_load :action_view do
      #   include ::MdiHelper
      # end
    end
  end
end
