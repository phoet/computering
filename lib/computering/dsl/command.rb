require "bundler"

module Computering::Dsl
  class Command < Text
    def execute
      @buffer = "\n"
      Bundler.with_clean_env do
        @buffer << `#{@text}`.chomp
      end
    rescue
      @buffer << add_style($!.message, :error)
    end

    protected

    def text_with_style(text, index)
      text = add_style(text, :text)
      if index == 0 || index == (0..-1)
        text = " #{add_style('⌘', :cursor)}  #{text}"
      end
      text
    end
  end
end
