module Programming
  module Dsl
    def paragraph(text)
      items.push Text.from_paragraph(text)
    end

    private

    def items
      @items ||= []
    end
  end
end