# frozen_string_literal: true

module Mdi
  class DummyIcon < MdiData
    def content
      <<-HTML.squish.html_safe
      <path d="M20,7Z"></path>
      HTML
    end
  end
end
