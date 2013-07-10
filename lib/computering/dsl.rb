module Computering
  module Dsl
    def paragraph(text)
      self.items += Text.from_text(text)
    end

    def command(text)
      self.items += Command.from_text(text)
    end

    protected

    def items
      @items ||= []
    end

    def items=(items)
      @items = items
    end
  end
end
