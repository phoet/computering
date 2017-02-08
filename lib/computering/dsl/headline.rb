module Computering::Dsl
  class Headline < Text
    def self.from_text(*text, margin: 10)
      text.unshift(" " * margin)
      text.push(" " * margin)
      [self.new(text.join)]
    end

    def buffer
      add_style('=' * @text.size, :buffer)
    end
  end
end
