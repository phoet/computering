module Computering::Dsl
  class Headline < Text
    def buffer
      add_style('=' * @text.size, :buffer)
    end

    def margin
      "       "
    end
  end
end
