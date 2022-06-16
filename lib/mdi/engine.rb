module Mdi
  class Engine < ::Rails::Engine
    config.autoload_paths = %W[#{root}/app/components #{root}/app/models].freeze
  end
end
