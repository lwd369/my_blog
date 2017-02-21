module ApplicationHelper

  def markdown(text)
    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true,
      filter_html:     true,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    markdown = Redcarpet::Markdown.new(HTMLwithCodeRay, extensions)

    markdown.render(text).html_safe
  end

  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:tab_width=>2)
    end
  end

end
