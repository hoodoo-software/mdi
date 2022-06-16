# frozen_string_literal: true

class MdiComponent < ViewComponent::Base
  def initialize(mdi_data = nil, **svg_attributes)
    @mdi_data = mdi_data.is_a?(Class) ? mdi_data.new : mdi_data
    @svg_attributes = svg_attributes
  end

  def call
    tag.svg xmlns: 'http://www.w3.org/2000/svg',
            viewBox: '0 0 24 24',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
            'aria-hidden': 'true',
            focusable: 'false',
            fill: 'currentColor',
            **@svg_attributes do
      svg_content
    end
  end

  def render?
    svg_content.present?
  end

  private

  def svg_content
    content.presence || @mdi_data.try(:content)
  end
end

