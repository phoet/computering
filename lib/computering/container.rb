module Computering
  class Container
    include Computering::Dsl

    def initialize(code)
      @source = CodeParser.new(code)

      instance_eval code
    end

    protected

    def block_source(name)
      @source.blocks[name].strip
    end
  end
end
