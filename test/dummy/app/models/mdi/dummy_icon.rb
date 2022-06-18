class Mdi::DummyIcon < MdiData
  def content
    <<-HTML.squish.html_safe
      <path d="M20,7Z"></path>
    HTML
  end
end
