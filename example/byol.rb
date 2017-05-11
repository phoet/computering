headline 'BYOL - B ring Y our O wn L ogging'

paragraph 'build a heroku logging-addon in 15 minutes'

headline 'TOPICS'

list [
  'log-drains',
  'heroku addon-api',
  'kensa gem',
  'addon-portal',
]


headline 'LOG-DRAINS'

command 'cd ~/o && heroku info | head -n8'

command 'cd ~/o && heroku drains'

command 'cd ~/o && heroku addons:open papertrail'

link 'heroku logplex drains', 'https://devcenter.heroku.com/articles/log-drains#https-drains'

link 'accessing logs', 'https://devcenter.heroku.com/articles/accessing-app-logs#add-on-manifest'


headline 'HEROKU ADDON-API'

paragraph 'RESTful HTTP'

list [
  "PROVISION   => post    '/heroku/resources'",
  "DEPROVISION => delete  '/heroku/resources/:id'",
  "PLAN CHANGE => put     '/heroku/resources/:id'",
  "SSO         => get     '/heroku/resources/:id'",
  "SSO LOGIN   => post    '/sso/login'",
  "SSO INDEX   => get     '/'",
]

paragraph 'add some sprinkles of JSON'


headline 'KENSA GEM'

command 'gem install kensa'

command 'kensa 2>&1 | head -n7'

code("kensa create ADDON_NAME --template TEMPLATE_NAME")

list [
  'sinatra',
  'node',
  'clojure',
  'go',
]

link 'sinatra template', 'https://github.com/heroku/kensa-create-sinatra/blob/master/app.rb#L47-L119'

code("kensa create let-it-drain --template sinatra")

command 'cd ~/l && jq "." -C addon-manifest.json'

paragraph 'some customizations:'

list [
  'persistance with mongodb',
  'https syslog endpoint',
  'websocket connection',
]

link 'moar addon code', 'https://github.com/phoet/let-it-drain/blob/master/app/app.rb#L52-L131'

paragraph 'see it in action'

command 'cd ~/l && bin/clear'
command 'cd ~/l && kensa sso 554e15e9776f725044000000'
command 'cd ~/l && rougify bin/log'
command 'cd ~/l && bin/log'

link 'provisioning', 'https://devcenter.heroku.com/articles/building-a-heroku-add-on#provisioning'

command 'cd ~/l && kensa test provision'
command 'cd ~/l && kensa test all'
command 'cd ~/l && rougify use_let_it_drain.rb'
command 'cd ~/l && kensa run ruby use_let_it_drain.rb'
command 'cd ~/l && heroku addons:open papertrail'
command 'cd ~/l && kensa run --production ruby use_let_it_drain.rb'


headline 'PORTAL'

link 'submit to heroku', 'https://devcenter.heroku.com/articles/submitting-an-add-on#2-submit-manifest-to-heroku'

link 'management portal', 'https://addons.heroku.com/provider/addons/let-it-drain/overview'

command 'cd ~/o && heroku addons:destroy let-it-drain --confirm onruby'
command 'cd ~/o && heroku addons:create let-it-drain:test'
command 'cd ~/o && heroku drains'
command 'cd ~/o && heroku addons:open let-it-drain'
command 'curl -sS http://hamburg.onruby.de > /dev/null'

command 'cowsay -f bunny "Questions?"'

link 'computering', 'https://github.com/phoet/computering#computering'

command 'cowsay -f dragon KTHXBYE'
