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
      @buffer = add_style($!.message, :error)
    end

    protected

    def text_with_style(text, index)
      text = add_style(text, :text)
      if index == 0 || index == (0..-1)
        text = " #{add_style('☞', :cursor)}  #{text}"
      end
      text
    end
  end
end
