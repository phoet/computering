# -*- coding: utf-8 -*-
module Computering::Dsl
  class Link < Text
    def self.from_text(text, link)
      Array(self.new text, link)
    end

    def initialize(text, link)
      super text
      @link = link
    end

    def execute
      `#{command_by_os} '#{@link}'`
    rescue
      @buffer = add_style($!.message, :error)
    end

    protected

    def text_with_style(text, index)
      text = add_style(text, :text)
      if index == 0 || index == (0..-1)
        text = " #{add_style('☞', :cursor)}  #{text}"
      end
      text
    end

    private

    def command_by_os
      if (/linux/ =~ RUBY_PLATFORM)
        "xdg-open"
      else
        "open"
      end
    end
  end
end
