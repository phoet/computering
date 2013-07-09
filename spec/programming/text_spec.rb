require "spec_helper"

module Programming
  describe Text do
    context "initialization" do
      it "inits from a paragraph" do
        items = Text.from_paragraph(TEXT)
        items.should have(3).items
      end
    end
  end
end
