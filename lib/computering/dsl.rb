module Computering
  module Dsl
    def spec(name, &block)
      self.items += Spec.from_block(name, block_source(name), &block)
    end

    def configure(&block)
      Config.instance_eval(&block)
    end

    def headline(text)
      self.items += Headline.from_text(text)
    end

    def paragraph(text)
      self.items += Text.from_text(text)
    end

    def command(text)
      self.items += Command.from_text(text)
    end

    def link(text, link)
      self.items += Link.from_text(text, link)
    end

    def items
      @items ||= []
    end

    def items=(items)
      @items = items
    end
  end
end
