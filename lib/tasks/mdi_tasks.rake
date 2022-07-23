# frozen_string_literal: true

namespace :mdi do
  desc 'Create auto-generated icon data files models/mdi/*.rb'
  task generate: :environment do
    auto_generated_comment = <<~HEREDOC
      # frozen_string_literal: true

      #
      # This file is auto-generated by ./bin/rails mdi:generate
      #
    HEREDOC

    meta = JSON.parse(File.read('data/meta.json'))
               .index_by { |item| item['name'] }

    Dir['data/svg/*.svg'].each do |svg_file_path|
      svg_file_basename = File.basename(svg_file_path, '.svg')
      svg_file_meta = meta[svg_file_basename]

      mdi_data_file_name = svg_file_basename.underscore
      mdi_data_file_path = "app/models/mdi/#{mdi_data_file_name}.rb"
      puts "Generating #{mdi_data_file_path}"
      File.open(mdi_data_file_path, 'w+') do |f|
        svg = Nokogiri::HTML.parse(File.read(svg_file_path))
        svg_content = svg.at_css('svg').children

        if svg_file_meta.present?
          meta_author = svg_file_meta['author']
          meta_version = svg_file_meta['version']
        end

        f.puts auto_generated_comment
        f.puts 'module Mdi'
        f.puts "  # * Version: #{meta_version}" if meta_version.present?
        f.puts "  # * Author: #{meta_author}" if meta_author.present?
        f.puts "  class #{mdi_data_file_name.camelize} < MdiData"
        f.puts '    def content'
        f.puts '      <<-HTML.squish.html_safe'
        f.puts "        #{svg_content}"
        f.puts '      HTML'
        f.puts '    end'
        f.puts '  end'
        f.puts 'end'
        f
      end
    end
  end
end
