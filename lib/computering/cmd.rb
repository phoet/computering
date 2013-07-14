require "io/console"

module Computering
  class Cmd
    class Exit < StandardError; end

    CONTROL_C = 3
    ENTER     = 13

    def initialize(file, stdin = STDIN, stdout = STDOUT)
      @file       = file
      @stdin      = stdin
      @stdout     = stdout
      @container  = Container.new File.read(file)
    end

    def execute
      @container.items.each do |item|
        readchars item unless item.blank?
      end
    end

    def readchars(item)
      i = 0
      @stdin.noecho do |io|
        while char = io.getch
          raise Exit if char.ord == CONTROL_C
          if char.ord == ENTER
            @stdout.puts item[i..-1]
            item.execute
            @stdout.puts item.buffer if item.buffer
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
