module Programming
  class Text
    def initialize(line)
      @line  = line
    end

    def [](index)
      @line[index]
    end

    def blank?
      @line.nil? || @line.strip == ""
    end

    def self.from_paragraph(text)
      text.strip.split("\n").map { |line| self.new(line) }
    end
  end
end
