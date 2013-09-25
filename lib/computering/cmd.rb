module Computering
  class Cmd
    class Exit < StandardError; end

    def initialize(input_type, file)
      @input     = Module.const_get("Computering::Input::#{input_type.capitalize}").new
      @container = Container.new File.read(file)
    end

    def execute
      @container.items.each do |item|
        @input.consume(item) unless item.blank?
      end
    end
  end
end
