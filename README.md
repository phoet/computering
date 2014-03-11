# Computering

![Computering](http://blog.pluralsight.com/wp-content/uploads/peepcode/2013/charismatic-duo/img/dinosaur-hands.gif)

# Usage

Installing the gem:

```
gem install computering
```

create a presentation file

```
echo "
headline 'computering'
paragraph 'is super easy'
command 'echo to use'
link 'see yourself', 'https://github.com/phoet/computering#usage'
" > preso.rb
```

and run it with the `computering` command:

```
computering preso.rb
```

# DSL

Please have a look at the dsl.rb file and the examples folder for how to use the DSL.

Supported commands are:

* headline (underlined text output)
* paragraph (simple text output)
* link (opens a page via `open`)
* command (runs a shell command and captures the output)
* code (syntaxhighlights ruby code)
* spec (runs inline minitest-spec)

# TODO

* syntax-check
* dry-mode
* config speed

# License

"THE (extended) BEER-WARE LICENSE" (Revision 42.0815): [phoet](mailto:ps@nofail.de) contributed to this project.

As long as you retain this notice you can do whatever you want with this stuff.
If we meet some day, and you think this stuff is worth it, you can buy me some beers in return.
