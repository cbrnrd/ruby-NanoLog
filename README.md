# NanoLog [![Gem Version](https://badge.fury.io/rb/nanolog.svg)](https://badge.fury.io/rb/nanolog)
A simple and extremely small logging library for Ruby.

## Getting Started

A simple program using NanoLog looks like so:

```ruby
require 'nanolog'

logger = NanoLog::Logger.new('filepath.log')

logger.info('informational message')
logger.fatal('fatal message')
```

## Installing
Install the gem like so:

`gem install nanolog`

or add the following line to your `Gemfile`:

```ruby
gem 'nanolog'
```

## Design Highlights
- Simple and easy to use API
- Incredibly small gem (~5kb!)

## Documentation
Available [here](http://www.rubydoc.info/gems/nanolog/0.1.1c)

## Authors
- Carter Brainerd (cbrnrd) - [GitHub](https://github.com/cbrnrd)

## Legal stuff 
NanoLog is licensed under the MIT license (see [LICENSE](https://github.com/cbrnrd/ruby-NanoLog/blob/master/LICENSE))

## Built with
* [Atom](http://atom.io)

## Thank you

Thank you for using NanoLog 👏.
If you're feeling generous, donations are always appreciated:

```
19XiyrvqyYNLehf89ckBjPQYCfW77F9rx7 (Ƀ, BTC)
0xf6f247e4a929890926F88144111f5E27d87bD07a (ETH)
LQRUJUpSkmi5BfT6nyPVNKKoLWbnpZ64sL (Ł, LTC)
https://www.paypal.me/0xCB (PayPal)
```
