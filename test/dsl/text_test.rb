require_relative "../test_helper"

module Computering::Dsl
  describe Text do
    describe "char access" do
      before do
        @item = Text.new "txt"
      end

      it "gets each character" do
        assert_equal "t", @item[0]
        assert_equal "x", @item[1]
        assert_equal "t", @item[2]
        assert_equal "txt", @item[0..-1]
      end
    end

    describe "initalization" do
      before do
        @item = Text.new ""
      end

      it "has defaults" do
        assert_equal true, @item.blank?
        assert_equal "\n", @item.padding
        assert_equal nil,  @item.buffer
        assert_equal nil,  @item.execute
      end

      it "inits from string" do
        items = Text.from_text("bla\nblupp")
        assert_equal 2, items.size
        assert_equal "bla", items[0].text
        assert_equal "blupp", items[1].text
      end
    end
  end
end
