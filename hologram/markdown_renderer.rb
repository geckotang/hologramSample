class MarkdownRenderer < Redcarpet::Render::HTML

  def block_code(code, language)

    if language.include?('js')
      lang = 'javascript'
    elsif language.include?('html')
      lang = 'html'
    elsif language.include?('css')
      lang = 'css'
    else
      lang = language
    end

    if language and language.include?('example')
      if language.include?('js')
        #jsのプレビュー
        "
        <script>#{code}</script>
        <div class='sg-codeBlock'>
          <div class='sg-codeBlock__code  jsExample' data-lang='#{lang}'>
            #{Pygments.highlight(code)}
          </div>
        </div>
        "
      else
        #コードとプレビュー
        "
        <div class='sg-codeBlock'>
          <div class='sg-codeBlock__preview'>
            #{render_html(code, language)}
          </div>
          <div class='sg-codeBlock__code' data-lang='#{lang}'>
            #{Pygments.highlight(code, :lexer => get_lexer(language))}
          </div>
        </div>
        "
      end
    else
      #コードのみ
      "
      <div class='sg-codeBlock'>
        <div class='sg-codeBlock__code'>
          #{Pygments.highlight(code)}
        </div>
      </div>
      "
    end
  end

  #hr要素
  def hrule()
    "<hr class='sg-hr'>"
  end

  #a要素
  def link(link, title, content)
    "<a class='sg-textLink' href='#{link}' title='#{title}'>#{content}</a>"
  end

  #p要素
  def paragraph(text)
    "<p class='sg-paragraph'>#{text}</p>"
  end

  #blockquote要素
  def block_quote(quote)
    "<blockquote class='sg-blockquote'>#{quote}</blockquote>"
  end

  #code要素
  def codespan(code)
    "<code class='sg-code'>#{code}</code>"
  end

  #ul,ol要素
  def list(contents, list_type)
    tag = (list_type == :ordered) ? 'ol' : 'ul';
    "
    <#{tag} class='sg-list-#{list_type}'>
      #{contents}
    </#{tag}>
    "
  end

  #table,thead,tbody?
  def table(header, body)
    "
    <table class='sg-table'>
      <thead>#{header}</thead>
      <tbody>#{body}</tbody>
    </table>
    "
  end

  #img要素
  def image(link, title, alt_text)
    "<img class='sg-image' src='#{link}' title='#{title}' alt='#{alt_text}'>"
  end

  private
  def render_html(code, language)
    case language
      when 'haml_example'
        safe_require('haml', language)
        return Haml::Engine.new(code.strip).render(template_rendering_scope, {})
      else
        code
    end
  end

  def template_rendering_scope
    Object.new
  end

  def get_lexer(language)
    case language
      when 'haml_example'
        'haml'
      else
        'html'
    end
  end

  def safe_require(templating_library, language)
    begin
      require templating_library
    rescue LoadError
      raise "#{templating_library} must be present for you to use #{language}"
    end
  end

end
