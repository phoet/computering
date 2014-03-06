headline 'Rails Middlewares for Fun (and Profit?)'
link 'Señor Developer Bacon', 'http://bit.ly/1maTrIt'

paragraph 'what can we do with a middleware?'

list [
  "implement cross-cutting concerns (authorization, caching, logging)",
  "enrich request information (session-cookies)",
  "modify the response (inject javascript)",
]

link 'rails is rack based', 'http://rack.github.io/'

headline 'Website Example'

command 'cd ~/o/ && git co 2c9846ce'
link 'veggie.onruby', 'http://hamburg.onruby.dev:5000/'

paragraph "let's write some code"

code(%Q[
# app/middlewares/bacon_infused.rb
class BaconInfused
  def initialize(app)
    @app = app
  end

  def call(env)
    s, h, r = @app.call(env)
    if r.content_type == 'text/html'
      r.body = r.body.
        gsub(/ruby|rails/i, 'BACON').
        gsub(/src=('|")([^'|"]+).(png|jpg|jpeg|gif).*('|")/,
          'src="http://bit.ly/1maTrIt"')
    end
    [s, h, r]
  end
end
])

command 'cd ~/o/ && git co ba41abd30'
command 'cd ~/o/ && bundle exec rake middleware'
link 'bacon.onruby', 'http://hamburg.onruby.dev:5000/'

headline "Downsides"
list [
  "out of sight",
  "fragile",
  "no live code reloading",
]

link "WHY U NO CMD+R?", 'http://stackoverflow.com/questions/20874222/reloading-rails-middleware-without-restarting-the-server-in-development/21323432'

link 'zazicki', 'http://bit.ly/Mqmwzz'

link 'github.com/phoet/zazicki', 'http://github.com/phoet/zazicki'

command 'cowsay KTHXBYE'
