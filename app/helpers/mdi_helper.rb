# frozen_string_literal: true

module MdiHelper
  def mdi_component(mdi_data, **svg_attributes, &block)
    render MdiComponent.new(mdi_data, **svg_attributes), &block
  end
end