module Computering::Dsl
  class Text
    def initialize(text)
      @text   = text
      @buffer = ""
    end

    def [](index)
      @text[index]
    end

    def execute
    end

    def buffer
      @buffer
    end

    def blank?
      @text.nil? || @text.strip == ""
    end

    def self.from_text(text)
      text.strip.split("\n").map { |line| self.new(line) }
    end
  end
end
