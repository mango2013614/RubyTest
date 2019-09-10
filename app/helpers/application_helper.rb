module ApplicationHelper
  def markdown(text)
    options = {
      filter_html:     true,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    extensions = {
      underline: true,
      highlight: true,
      autolink:                 true,
      superscript:              true,
      tables:                   true,
      fenced_code_blocks:       true,
      space_after_headers:      true,
      footnotes:                true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    raw markdown.render(text)
  end
end
