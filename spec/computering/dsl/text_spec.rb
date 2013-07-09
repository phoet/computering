require "spec_helper"

module Computering::Dsl
  describe Text do
    context "initialization" do
      it "inits from a paragraph" do
        items = Text.from_text(TEXT)
        items.should have(3).items
      end
    end
  end
end
