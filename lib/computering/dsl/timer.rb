module Computering::Dsl
  class Timer < Text
    def self.from_now(message, start = Time.now)
      [self.new(message, start)]
    end

    def initialize(message, start)
      super message
      @start = start
      @buffer = "\n"
    end

    def execute
      @buffer << "#{(Time.now - @start).to_i / 60.0} minutes"
    end
  end
end
