headline 'Vue.js / JavaScript: The Good Parts 😜'

command '~/.iterm2/imgcat example/vuejs/grumpy-cat-i-hate-javascript.jpg'

paragraph 'but why? just because its different? 🤔'

list [
  'prototypes',
  'evented',
  'functional',
]

link 'easy to fix, read this book!', 'http://bdcampbell.net/javascript/book/javascript_the_good_parts.pdf'

paragraph 'but why did i still hate it? 😳'

list [
  'hype framework of the week',
  'immaturity / little standardization',
  'dependency nightmare',
  'tooling craziness',
  'overwhelming?',
]

command 'cowsay -f udder "JavaScript, why you so complicated?"'

headline 'Vue.js to the rescue! 🤘'

quote 'Vue (pronounced /vjuː/, like view) is a progressive framework for building user interfaces.'

link 'Feels so productive', 'https://twitter.com/phoet/status/857283699032948739'

paragraph 'why is it appealing? 💖'

list [
  'flat learning curve',
  'sensible/opinionated defaults',
  'convention over configuration',
  'principle of least surprise',
  'developer happyness',
  'sounds familiar?',
]

paragraph 'easy to build a mental model! 🙃'

list [
  'MVVM',
  'MVP',
  'MVC',
  'M&Ms?'
]

paragraph 'who cares?'
paragraph '(for those who do its MVVM)'

list [
  'components (view)',
  'directives (behavior)',
  'bindings (data)',
]

code '<helloWorldComponent />'
code '<helloWorldComponent v-hello-directive="Hi there!" />'
code '<helloWorldComponent :text="getHelloText()" @click="handleClick" />'

link 'Vue.js guides AKA Vue in action!', 'https://vuejs.org/v2/guide/'

headline 'vue-cli 💪'

paragraph 'rails new, uuahm vue init <template-name> <project-name>'

paragraph '👉 solves most of the tooling pain (with an opinionated tool 🛠)'

paragraph 'cd example/vuejs && vue init webpack example'
command %[
osascript \
-e 'tell application "iTerm" to activate' \
-e 'tell application "iTerm" to create window with default profile' \
-e 'tell application "iTerm" to tell current session of current window to write text "cd ~/Documents/ruby/computering/example/vuejs"' \
-e 'tell application "iTerm" to tell current session of current window to write text "vue init webpack example" newline NO'
]
