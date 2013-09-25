module Computering::Dsl
  class List < Text
    protected

    def text_with_style(text, index)
      text = add_style(text, :text)
      if index == 0 || index == (0..-1)
        text = " #{add_style('*', :bullet)}  #{text}"
      end
      text
    end
  end
end
