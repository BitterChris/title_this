# TitleThis

TitleThis can be used to turn any String, Array, or key in a Hash into a titleized version of itself. This isn't anything fancy and ignores any
results of titleization. It just returns a capitalized String. This is really just for educational purposes. There are much better gems out there
that do similar things.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'title_this'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install title_this

## Usage

#### String#title_this

Calling `TitleThis.string(string)` on any String object will capitalize each word and return it.

```ruby
>> string = "this is my title"
>> TitleThis.string(string)
=> "This Is My Title"
```

#### Array#title_this

Calling `TitleThis.array(array)` on any Array will cast all contents to String, capitalize them, and return a joined String.

```ruby
>> arr = ['this', 'is', 'my', 'title']
>> TitleThis.array(arr)
=> "This Is My Title"
```

#### Hash#title_this(key)

Calling `TitleThis.hash(hash, :key)` on a Hash will find the proper value for the key passed, cast its contents to String, then capitalize each word before returning a joined String.

If `key` is not present within the Hash it will return `nil`. 

```ruby
>> hash = { sentence: 'this is my title' }
>> TitleThis.hash(hash, :sentence)
=> "This Is My Title"
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
