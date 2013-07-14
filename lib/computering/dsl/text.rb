module Computering::Dsl
  class Text

    def self.from_text(text)
      text.strip.split("\n").map { |line| self.new(line) }
    end

    def initialize(text, buffer = nil)
      @text   = text
      @buffer = buffer
    end

    def [](index)
      text_with_style(@text[index], index) if @text[index]
    end

    def execute
    end

    def buffer
      "#{padding}#{@buffer}" if @buffer
    end

    def padding
      "\n"
    end

    def blank?
      @text.nil? || @text.strip == ""
    end

    protected

    def text_with_style(text, index)
      add_style(text, :text)
    end

    def add_style(text, type)
      id = self.class.name.split("::").last.downcase.to_sym
      Computering::Config.styling(text, id, type)
    end
  end
end
