module Computering::Dsl
  class Headline < Text
    def initialize(text)
      super(text.foreground(:red).underline)
    end
  end
end
