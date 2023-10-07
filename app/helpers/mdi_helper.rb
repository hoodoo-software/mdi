# frozen_string_literal: true

module MdiHelper
  # Renders an svg tag given an icon data object and additional attributes.
  #
  # Examples
  #
  #   mdi_icon(Mdi::Delete)
  #   # <svg viewBox="0 0 24 24" fill="currentColor">
  #   #   <path ...></path>
  #   # </svg>
  #
  #   mdi_icon(Mdi::Close, width: 72, height: 72, color: "#d02d32")
  #   # <svg viewBox="0 0 24 24" fill="currentColor" width="128" height="128" color="#d02d32">
  #   #   <path ...></path>
  #   # </svg>
  def mdi_icon(mdi_data, **svg_attributes)
    mdi_data = mdi_data.new if mdi_data.is_a? Class

    svg_content = mdi_data.try(:content)
    return if svg_content.blank?

    tag.svg xmlns: "http://www.w3.org/2000/svg",
      viewBox: "0 0 24 24",
      fill: "currentColor",
            **svg_attributes do
      svg_content
    end
  end
end
