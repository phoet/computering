module Computering::Dsl
  class Headline < Text
    def buffer
      "#{'=' * @text.size}".foreground(:red)
    end

    protected

    def text_with_style(text, index)
      text.background(:red)
    end
  end
end
