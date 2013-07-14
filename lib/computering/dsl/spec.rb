require "minitest"
require "minitest/spec"
require "stringio"

module Minitest
  class SummaryReporter < StatisticsReporter
    def start
      # REM (ps) monkeypatch it so that there is not so much verbose output
      super
      self.sync = io.respond_to? :"sync="
      self.old_sync, io.sync = io.sync, true if self.sync
    end
  end
end

module Computering::Dsl
  class Spec < Text
    def self.from_block(name, text, &block)
      Array(self.new name, text, &block)
    end

    def initialize(name, text, &block)
      super text
      @name   = name
      @block  = block
      @buffer = "\n"
    end

    def execute
      describe @name, &@block

      output    = StringIO.new("")
      reporter  = Minitest::SummaryReporter.new(output)

      reporter.start

      Minitest::Runnable.runnables.each do |runnable|
        runnable.run reporter
      end

      reporter.report

      @buffer << output.string.strip
      Minitest::Test.reset
    rescue
      @buffer << add_style($!.message, :error)
    end
  end
end
