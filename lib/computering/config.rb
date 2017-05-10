module Computering
  class Config
    def self.font
      Rainbow("-")
    end

    @style_defaults = {
      text: {
        text:   "-",
        buffer: "-",
      },
      timer: {
        text:   "-",
        buffer: "-",
      },
      list: {
        text:   "-",
        bullet: font.color(:green),
      },
      headline: {
        text:   font.background(:red),
        buffer: font.background(:red),
      },
      quote: {
        text:   font.color(:aqua),
      },
      link: {
        text:   font.color(:black).background(:cyan),
        cursor: font.color(:green),
        error:  font.background(:red),
      },
      command: {
        text:   font.color(:black).background(:cyan),
        cursor: font.color(:green),
        buffer: font.bright,
        error:  font.color(:red),
      },
      spec: {
        text:   font.foreground(:green),
        buffer: font.bright,
        error:  font.color(:red),
      },
    }
    @style = @style_defaults.dup

    class << self
      attr_accessor :style

      def styling(text, id, type)
        style_defaults(id, type).gsub("-", text)
      end

      def style_defaults(id, type)
        default = @style_defaults[id][type] || "-"
        (style[id] && style[id][type]) ? style[id][type] : default
      end
    end
  end
end
