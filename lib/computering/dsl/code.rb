require 'rouge'

module Computering::Dsl
  class Code < Text
    def self.from_text(*text)
      text.flatten.map { |line| self.new(line) }
    end

    protected

    def text_with_style(text, index)
      Rouge.highlight(text, 'ruby', 'terminal256')
    end
  end
end
