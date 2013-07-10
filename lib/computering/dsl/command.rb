module Computering::Dsl
  class Command < Text
    def initialize(cmd)
      @text   = "$ #{cmd}".color(:blue).background(:cyan)
      @buffer = ""
      @cmd    = cmd
    end

    def execute
      output  = `#{@cmd}`
      @buffer = "\n#{output}\n"
    rescue
      puts $!
    end

    def self.from_text(cmd)
      Array(self.new cmd)
    end
  end
end
