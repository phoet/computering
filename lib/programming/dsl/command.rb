module Programming::Dsl
  class Command < Text
    def self.from_text(text)
      buffer = `#{text}`
      self.new text, buffer
    end
  end
end
