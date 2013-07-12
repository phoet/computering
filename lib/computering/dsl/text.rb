module Computering::Dsl
  class Text

    def self.from_text(text)
      text.strip.split("\n").map { |line| self.new(line) }
    end

    def initialize(text)
      @text   = text
    end

    def [](index)
      text_with_style(@text[index], index) if @text[index]
    end

    def execute
    end

    def buffer
      nil
    end

    def padding
      "\n"
    end

    def blank?
      @text.nil? || @text.strip == ""
    end

    protected

    def text_with_style(text, index)
      text
    end
  end
end
