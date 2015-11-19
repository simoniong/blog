module Jekyll
  class Blockquote < Liquid::Block
    Syntax = /([\w\s]+)/

    def initialize(tag_name, markup, tokens)
      @by = nil
      if markup =~ Syntax
        @by = $1
      end
      super
    end

    def render(context)
      output = super
      if @by.nil?
        '<blockquote>' + output + '</blockquote>'
      else
        '<blockquote>' + output + '<br />' + @by + '</blockquote>'
      end
    end
  end
end

Liquid::Template.register_tag('blockquote', Jekyll::Blockquote)
