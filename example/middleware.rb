headline 'MIDDLEWARES'
link 'BACON', 'http://bit.ly/1maTrIt'
paragraph 'and'
link 'zazicki', 'http://bit.ly/Mqmwzz'

paragraph 'what can we do with a middleware?'

list [
  "implement cross-cutting concerns",
  "enrich request information",
  "modify the response",
]

headline 'EXAMPLE WEBSITE'

command 'cd ~/Documents/rails/on_ruby/ && git co 2c9846ce'
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

command 'cd ~/Documents/rails/on_ruby/ && git co 0c943352'
link 'bacon.onruby', 'http://hamburg.onruby.dev:5000/'

paragraph "awesome, isn't it?!"

paragraph 'what about the garlic sauce?'

headline "WHY U NO CMD+R?"

link 'reloading middlewares', 'http://stackoverflow.com/questions/20874222/reloading-rails-middleware-without-restarting-the-server-in-development/21323432'

link 'github.com/phoet/zazicki', 'http://github.com/phoet/zazicki'

command 'cowsay KTHXBYE'
