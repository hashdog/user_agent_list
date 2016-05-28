[![Beerpay](https://beerpay.io/hashdog/user_agent_list/badge.svg?style=beer)](https://beerpay.io/hashdog/user_agent_list)
# UserAgentList

Minimal ruby gem for list all user-agents supported by useragentstring.com site!

## Installation

```ruby
gem install user_agent_list
```
## Usage

List supported UA browsers
```ruby
UserAgentList.supported_browsers
```

Get UA list
```ruby
UserAgentList.all
```

Find UA by browser name
```ruby
UserAgentList.by_browser('Chrome')
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chebyte/user_agent_list.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
