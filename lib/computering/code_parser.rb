require "ripper"
require "sorcerer"

module Computering
  class CodeParser
    attr_reader :blocks

    def initialize(code)
      @sexp   = Ripper::SexpBuilder.new(code).parse
      @blocks = {}
      walk(@sexp)
    end

    def walk(sexp, last=nil)
      sexp.each do |item|
        if item.is_a? Array
          walk(item, sexp)
        elsif item == :command
          next_item = sexp[1]
          token, name, _ = next_item
          if token == :@ident && name == "spec"
            block_sexp = last.last.last
            code = Sorcerer.source(block_sexp, multiline: true, indent: true)
            name = sexp.last[1].last.last.last[1]
            @blocks[name] = code
          end
        end
      end
    end
  end
end
