module Computering
  module Input
    class Leap
      def initialize(stdout = STDOUT)
        @stdout = stdout

        require 'leap_motion'
        @controller = LeapMotion::Controller.new
      rescue
        puts $!
        puts "Do you have the leap_motion gem and the LeapMotion-SDK installed?"
        exit(1)
      end

      def consume(item)
        i = 0
        last_count = 1
        @controller.each_frame do |frame|
          if frame.hands.count == 2
            count = frame.hands.leftmost.fingers.count + frame.hands.rightmost.fingers.count
            if i > 0 && last_count != 1 && count == 1
              @stdout.puts item[i..-1]
              item.execute
              @stdout.puts item.buffer  if item.buffer
              @stdout.puts item.padding if item.padding
              break
            elsif last_count != count && count > 6
              @stdout.write item[i] if item[i]
              i += 1
            end
            last_count = count
          end
        end
      end
    end
  end
end
