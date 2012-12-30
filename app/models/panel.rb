class Panel < ActiveRecord::Base
  attr_accessible :url, :html, :text, :comic_id
  belongs_to :comic

  def rendered_text
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
        :hard_wrap => true, :autolink => true, :space_after_headers => true)
    markdown.render(text)
  end
end
