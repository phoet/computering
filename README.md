# Computering

![Computering](https://peepcode.com/blog/2013/charismatic-duo/img/dinosaur-hands.gif)

# Usage

Installing the gem:

```
gem install computering
```

or via Bundler

```ruby
#Gemfile
gem "computering"
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
computering bash preso.rb
```

# LeapMotion

You can use the LeapMotion as an input device!

In order for that to work, you will have to add the _leap_motion_ gem:

```ruby
#Gemfile
gem "leap_motion"
```

and run it with the `leap` option:

```
computering leap preso.rb
```

## Typing Rules

Use both hands!

* typing gesture
  * change number of finders between 7 and 10
  * one character per change
* typewriter gesture
  * swipe 1 finger
  * one command per change

# TODO

* syntax-check
* dry-mode
* config speed

# License

"THE (extended) BEER-WARE LICENSE" (Revision 42.0815): [phoet](mailto:ps@nofail.de) contributed to this project.

As long as you retain this notice you can do whatever you want with this stuff.
If we meet some day, and you think this stuff is worth it, you can buy me some beers in return.
