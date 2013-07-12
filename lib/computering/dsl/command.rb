require "bundler"

module Computering::Dsl
  class Command < Text
    def execute
      Bundler.with_clean_env do
        @buffer = `#{@text}`.chomp.bright
      end
    rescue
      @buffer = "#{$!}".color(:red)
    end

    protected

    def text_with_style(text, index)
      text = text.color(:black).background(:cyan)
      if index == 0 || index == (0..-1)
        text = " #{'⌘'.color(:green)}  #{text}"
      end
      text
    end
  end
end
