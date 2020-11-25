# Ruby 3 Exploration

Contains:
- Static typing
- Ractors

## Static Typing
To run the static type checks:

```
$ bundle install
$ steep check
```

Super basic example.

I also hand wrote the rbs files. You can use

```
rbs prototype rb app.rb
```

To generate a starting point for writing rbs.

## Ractor

The ractor example will show how exceptions are handled between ractors. To run the ractor example:

```
$ ruby ractor.rb
```

Building a non-trivial yet quick concurrency example was hard. You can find more Ractor examples in the [Ractor docs](https://github.com/ruby/ruby/blob/master/doc/ractor.md#examples).