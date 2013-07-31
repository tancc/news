module ApplicationHelper

  def markdown(text)
    options = {
      :autolink => true,
      :space_after_headers => true,
      :no_intra_emphasis => true
    }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    markdown.render(text).html_safe
  end

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end

  def safe_truncate_content(content, length)
    pure_text = strip_tags(content).gsub(/\n/, '').gsub(/\r/, '').gsub(/\t/, '').gsub(/&nbsp;/, '')
    sanitize truncate(pure_text, :length => length, :omission => '…')
  end

end
