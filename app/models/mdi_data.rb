# frozen_string_literal: true

class MdiData
  def content
    raise NotImplementedError, 'MdiData#content must be overridden'
  end
end