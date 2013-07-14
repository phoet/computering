module Computering
  class Config
    @style_defaults = {
      text: {
        text:   "-",
        buffer: "-",
      },
      headline: {
        text:   "-".background(:red),
        buffer: "-".background(:red),
      },
      link: {
        text:   "-".color(:black).background(:cyan),
        cursor: "-".color(:green),
        error:  "-".background(:red),
      },
      command: {
        text:   "-".color(:black).background(:cyan),
        cursor: "-".color(:green),
        buffer: "-".bright,
        error:  "-".color(:red),
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
