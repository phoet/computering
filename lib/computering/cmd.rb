require "io/console"

module Computering
  class Cmd
    class Exit < StandardError; end
    class Reload < StandardError; end
    class Back < StandardError; end

    CONTROL_B = 2
    CONTROL_C = 3
    CONTROL_R = 18
    ENTER     = 13

    def initialize(file, stdin = STDIN, stdout = STDOUT)
      @file       = file
      @stdin      = stdin
      @stdout     = stdout
      @container  = Container.new File.read(file)
    end

    def execute
      i = 0
      while i < @container.items.size
        begin
          item = @container.items[i]
          readchars item unless item.blank?
          i += 1
        rescue Back
          i -= 1 if i > 0
          @stdout.puts
        end
      end
    end

    def write(item, index, actual, debug: false)
      size = `tput cols`.chomp.to_i
      line = "#{item.padding}#{item[0..index]}"
      typed = debug ? "#{actual} <-" : ''
      line  = line.ljust(size - typed.length) + typed
      @stdout.print("#{line}\r")
      @stdout.flush
    end

    def readchars(item)
      i = 0
      actual = ''
      @stdin.noecho do |io|
        # write item, ""
        while char = io.getch
          raise Exit if char.ord == CONTROL_C
          raise Reload if char.ord == CONTROL_R
          raise Back if char.ord == CONTROL_B
          actual += char
          if char.ord == ENTER
            actual = ''
            @stdout.puts item[i..-1]
            item.execute
            @stdout.puts "#{item.padding}#{item.buffer}" if item.buffer
            @stdout.puts
            break
          else
            if item[i]
              while item[i] =~ /\s/
                write item, i, actual
                i += 1
              end
              write item, i, actual
            end
            i += 1
          end
        end
      end
    end
  end
end

require 'time'
#
# loop do
#   time = Time.now.to_s + "\r"
#   print time
#   $stdout.flush
#   sleep 1
# end
