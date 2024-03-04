# frozen_string_literal: true

module Mdi
  class Engine < ::Rails::Engine
    config.autoload_paths = %W[#{root}/app/helpers #{root}/app/models].freeze
  end
end
