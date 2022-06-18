# frozen_string_literal: true

require 'bundler/setup'

APP_RAKEFILE = File.expand_path('test/dummy/Rakefile', __dir__)
load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'
load 'lib/tasks/mdi_tasks.rake'

require 'bundler/gem_tasks'

require 'minitest/test_task'
Minitest::TestTask.create
task default: :test
