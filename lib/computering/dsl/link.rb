module Computering::Dsl
  class Link < Text
    def initialize(text, link)
      @text   = " #{'☞'.color(:green)}  #{text}"
      @link   = link
      @buffer = ''
    end

    def execute
      `open '#{@link}'`
    rescue
      puts $!
    end

    def self.from_text(text, link)
      Array(self.new text, link)
    end
  end
end
