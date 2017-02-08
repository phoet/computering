module Computering::Dsl
  class Quote < Text
    def padding
      "#{super} > "
    end
  end
end
