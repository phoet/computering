require_relative "test_helper"

module Computering
  describe Config do
    describe "style" do
      before do
        Config.style = {}
      end

      it "has defaults" do
        assert_equal Hash, Config.style.class
      end

      it "applies styles to text" do
        assert_equal "-", Config.style_defaults(:text, :text)
        assert_equal "-".color(:green), Config.style_defaults(:command, :cursor)
      end

      it "can override styles" do
        Config.style = {command: {cursor: "-".color(:blue)}}
        assert_equal "-".color(:blue), Config.style_defaults(:command, :cursor)
      end
    end
  end
end
