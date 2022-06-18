# frozen_string_literal: true

module MdiHelper
  def mdi_icon(mdi_data, **svg_attributes)
    mdi_data = mdi_data.new if mdi_data.is_a? Class

    svg_content = mdi_data.try(:content)
    return if svg_content.blank?

    tag.svg xmlns: 'http://www.w3.org/2000/svg',
            viewBox: '0 0 24 24',
            fill: 'currentColor',
            **svg_attributes do
      svg_content
    end
  end
end