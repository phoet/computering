# headline 'MIDDLEWARES'

# list ['app/middlewares/bacon_infused.rb']

code(%Q[
class BaconInfused
  def initialize(app)
    @app = app
  end

  def call(env)
    s, h, r = @app.call(env)
    if r.content_type == 'text/html'
      r.body = r.body.
        gsub(/Hamburg/, 'BACON').
        gsub(/src=('|")([^'|"]+).png('|")/, 'src="http://bit.ly/1maTrIt"')
    end
    [s, h, r]
  end
end
])

# link 'onruby.de', 'http://hamburg.onruby.dev:5000/'
