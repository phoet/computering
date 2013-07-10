module Computering::Dsl
  class Command < Text
    def initialize(cmd)
      @text   = " #{'⌘'.color(:green)}  #{cmd.color(:black).background(:cyan)}"
      @buffer = ""
      @cmd    = cmd
    end

    def execute
      output = ""
      Bundler.with_clean_env do
        output = `#{@cmd}`
      end
      @buffer = "\n#{output}\n"
    rescue
      puts $!
    end

    def self.from_text(cmd)
      Array(self.new cmd)
    end
  end
end
