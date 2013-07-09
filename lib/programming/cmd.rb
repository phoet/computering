require "io/console"

module Programming
  class Cmd
    include Programming::Dsl

    CONTROL_C = 3
    ENTER     = 13

    def initialize(file, stdin = STDIN, stdout = STDOUT)
      @file   = file
      @stdin  = stdin
      @stdout = stdout
      @code   = File.readlines(file).join("\n")

      instance_eval(@code)
    end

    def execute
      items.each do |lines|
        lines.each do |line|
          if line.blank?
            @stdout.puts ""
          else
            readchars(line)
          end
        end
      end
    end

    def readchars(line)
      i = 0
      @stdin.noecho do |io|
        while char = io.getch
          return if char.ord == CONTROL_C
          if char.ord == ENTER
            @stdout.puts line[i..-1]
            break
          else
            @stdout.putc line[i] if line[i]
            i += 1
          end
        end
      end
    end
  end
end
