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
      attr_reader :style_defaults

      def styling(text, id, type)
        default = style_defaults[id][type] || "-"
        if style[id] && style[id][type]
          style[id][type].gsub("-", text)
        else
          default.gsub("-", text)
        end
      end
    end
  end
end
