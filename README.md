# SpreeInstagramShopIt

This gem allows you to connect your spree store with your instagram posts, obtaining your posts and being able to link products with the images of your instagram posts.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spree_instagram_shop_it'
```

And then execute:

    $ bundle install
    $ rails g spree_instagram_shop_it:install

Or install it yourself as:

    $ gem install spree_instagram_shop_it

## Usage

Configure your access data for instagram api:

```
	access_token: 'YOUR ACCESS TOKEN'
  	client_id: 'YOUR CLIENT ID'
  	client_secret: 'YOUR CLIENT SECRET'

```

As for now Instagram access token doesn't change or expire, so you can use this simple-to-use service
to generate it http://services.chrisriversdesign.com/instagram-token/
I the nearest future the OAuth authorization for access token fetching will be implemented.

NOTE: You need to create an instagram app in your account.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/2bedigital/spree_instagram_shop_it.

