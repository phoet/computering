module Computering::Dsl
  class Headline < Text
    def initialize(text)
      @text   = text.background(:red)
      @buffer = "#{'=' * text.size}\n\n".foreground(:red)
    end
  end
end
