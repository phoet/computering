module Computering::Dsl
  class Command < Text
    def self.from_text(text)
      buffer = `#{text}`
      self.new "> #{text}", "\n#{buffer}\n"
    end
  end
end
