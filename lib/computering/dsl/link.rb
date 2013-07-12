module Computering::Dsl
  class Link < Text
    def self.from_text(text, link)
      Array(self.new text, link)
    end

    def initialize(text, link)
      super text
      @link = link
    end

    def execute
      `open '#{@link}'`
    rescue
      @buffer = "#{$!}"
    end

    protected

    def text_with_style(text, index)
      text = text.color(:black).background(:cyan)
      if index == 0 || index == (0..-1)
        text = " #{'☞'.color(:green)}  #{text}"
      end
      text
    end
  end
end
