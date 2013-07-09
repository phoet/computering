module Computering::Dsl
  class Text
    def initialize(line, buffer = "")
      @line   = line
      @buffer = buffer
    end

    def [](index)
      @line[index]
    end

    def buffer
      @buffer
    end

    def blank?
      @line.nil? || @line.strip == ""
    end

    def self.from_text(text)
      text.strip.split("\n").map { |line| self.new(line) }
    end
  end
end
