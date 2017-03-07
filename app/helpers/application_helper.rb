module ApplicationHelper

  def blogs_new_page?(params)
    if params[:controller] == 'admin/blogs' && params[:action] == 'new'
      return true
    end
    return false
  end

  def title(page_title)
    content_for :title, page_title.to_s
  end

  def banner_title(title)
    content_for :banner_title, title
  end

  def banner_image(blog)
    return "http://oltnwd3eq.bkt.clouddn.com/#{blog.banner_image}" if blog.class == Blog && blog.banner_image.length != 0
    return image_url('banner.jpg')
  end

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

    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions)

    markdown.render(text).html_safe
  end

  class HTMLwithCodeRay < Redcarpet::Render::HTML
    def block_code(code, language)
      language ||= 'text'
      CodeRay.scan(code, language).div(:tab_width=>2)
    end
  end

end
