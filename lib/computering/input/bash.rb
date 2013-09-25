require "io/console"

module Computering
  module Input
    class Bash
      CONTROL_C = 3
      ENTER     = 13

      def initialize(stdin = STDIN, stdout = STDOUT)
        @stdin  = stdin
        @stdout = stdout
      end

      def consume(item)
        i = 0
        @stdin.noecho do |io|
          while char = io.getch
            raise Exit if char.ord == CONTROL_C
            if char.ord == ENTER
              @stdout.puts item[i..-1]
              item.execute
              @stdout.puts item.buffer  if item.buffer
              @stdout.puts item.padding if item.padding
              break
            else
              @stdout.write item[i] if item[i]
              i += 1
            end
          end
        end
      end
    end
  end
end
