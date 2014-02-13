module Computering
  class Config
    @style_defaults = {
      text: {
        text:   "-",
        buffer: "-",
      },
      list: {
        text:   "-",
        bullet: Rainbow("-").color(:green),
      },
      headline: {
        text:   Rainbow("-").background(:red),
        buffer: Rainbow("-").background(:red),
      },
      link: {
        text:   Rainbow("-").color(:black).background(:cyan),
        cursor: Rainbow("-").color(:green),
        error:  Rainbow("-").background(:red),
      },
      command: {
        text:   Rainbow("-").color(:black).background(:cyan),
        cursor: Rainbow("-").color(:green),
        buffer: Rainbow("-").bright,
        error:  Rainbow("-").color(:red),
      },
      spec: {
        text:   Rainbow("-").foreground(:green),
        buffer: Rainbow("-").bright,
        error:  Rainbow("-").color(:red),
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
