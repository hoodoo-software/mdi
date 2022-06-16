module MdiHelper
  def mdi_component(icon_data, **attributes, &block)
    render MdiComponent.new(icon_data, **attributes), &block
  end
end