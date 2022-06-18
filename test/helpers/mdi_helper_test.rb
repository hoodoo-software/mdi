# frozen_string_literal: true

require 'test_helper'

class MdiHelperTest < ActionView::TestCase
  test 'renders a SVG tag with default attributes' do
    exp = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">'\
            '<path d="M20,7Z"></path>'\
          '</svg>'

    assert_equal(exp, mdi_icon(Mdi::DummyIcon))
    assert_equal(exp, mdi_icon(Mdi::DummyIcon.new))
  end

  test 'renders a SVG tag with passed additional attributes' do
    exp = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"'\
              ' width="128" height="128" color="#d02d32">'\
            '<path d="M20,7Z"></path>'\
          '</svg>'

    assert_equal(exp, mdi_icon(Mdi::DummyIcon, width: 128, height: 128, color: '#d02d32'))
  end

  test 'renders a SVG tag with overridden default attributes' do
    exp = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" fill="red">'\
            '<path d="M20,7Z"></path>'\
          '</svg>'
    assert_equal(exp, mdi_icon(Mdi::DummyIcon, viewBox: '0 0 48 48', fill: 'red'))
  end
end
