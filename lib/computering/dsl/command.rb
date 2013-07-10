module Computering::Dsl
  class Command < Text
    def initialize(cmd)
      @text   = "> #{cmd}"
      @cmd    = cmd
      super
    end

    def execute
      output  = `#{@cmd}`
      @buffer = "\n#{output}\n"
    rescue
      puts $!
    end

    def self.from_text(text)
      Array(self.new text)
    end
  end
end
