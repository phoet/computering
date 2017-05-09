headline 'Vue.js / JavaScript: The Good Parts 😜'

paragraph 'A developers journey:'

quote 'How Vue.js taught me that a modern JavaScript stack actually makes sense and is fun to work with!'

headline 'Becoming an Entreprenööör 👨‍💻'

list [
  'evaluate CMS solutions',
  'automate cloud hosting',
  'becoming an expert in tax calculations',
  'but the worst?',
]

paragraph 'building an interactive client side SPA 😱'

paragraph '😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱'
paragraph '😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱 😱'

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

command 'cowsay -f udder "JS tooling, why you so complicated?"'

timer 'precious audience time taken'

headline 'Vue.js to the rescue! 🤘'

headline '🚧  🚧  🚧   DISCLAIMER   🚧  🚧  🚧'

link 'this talk is not a comparison of web frameworks!', 'https://vuejs.org/v2/guide/comparison.html'

quote 'Vue (pronounced /vjuː/, like view) is a progressive framework for building user interfaces.'

paragraph '💖  why is it appealing?  💖'

list [
  'declarative',
  'embraces simplicity',
  'developer happiness',
  'sounds familiar?',
]

paragraph '🙃  flat learning curve, easy to build a mental model!  🙃'

list [
  'opinionated',
  'sensible defaults',
  'convention over configuration',
  'principle of least surprise',
]

link 'Feels so productive', 'https://twitter.com/phoet/status/857283699032948739'

headline 'Vue.js basics 🤓'

list [
  'MVVM',
  'MVP',
  'MVC',
  'M&Ms?'
]

paragraph 'who cares?'
paragraph '(for those who do its MVVM)'

list [
  'components (view/template) => <helloWorld message="moin" />',
  'directives (behavior)      => v-if="message"',
  'bindings (data)            => :message="chat.currentMessage"',
]

code "
<template>
  <h1>{{ msg }}</h1>
</template>

<script>
export default {
  data() {
    return {
      msg: 'Welcome',
    };
  },
};
</script>

<style scoped>
h1 {
  font-weight: normal;
}
</style>
"

paragraph 'analogy to ERB, so simple "even designers can use it"'

paragraph '☝️  battle tested!'

headline 'Vue.js examples 🤙'

link 'Vue.js guides, just like Rails guides but better!', 'https://vuejs.org/v2/guide/'

timer 'last third'

headline 'vue-cli 💪'

paragraph '`rails new`, uuahm `vue init`'

paragraph '👉  solves most of the tooling pain; with an opinionated tool 🛠'

paragraph 'vue init [simple|webpack|browserify|...] example'

command %[
osascript \
-e 'tell application "iTerm" to activate' \
-e 'tell application "iTerm" to create window with default profile' \
-e 'tell application "iTerm" to tell current session of current window to write text "cd ~/Documents/ruby/computering/example/vuejs"' \
-e 'tell application "iTerm" to tell current session of current window to write text "vue init webpack example" newline NO'
]

timer 'nearly finished'

link 'Vue.js at GitLab', 'https://about.gitlab.com/2016/10/20/why-we-chose-vue/'

link 'Vue.js 2.0 Udemy course', 'https://udemy.com/vuejs-2-the-complete-guide/'
