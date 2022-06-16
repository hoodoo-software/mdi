# frozen_string_literal: true

class MdiComponent < ViewComponent::Base
  attr_reader :data, :html_attributes

  def initialize(data:, **html_attributes)
    @data = data
    @html_attributes = html_attributes
  end

  def call
    tag.svg xmlns: 'http://www.w3.org/2000/svg',
            viewBox: '0 0 24 24',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
            'aria-hidden': 'true',
            focusable: 'false',
            fill: 'currentColor',
            **html_attributes do
      data&.content
    end
  end

  def render?
    data&.content.present?
  end
end

