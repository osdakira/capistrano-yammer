# Capistrano::Yammer

capistrano notification for yammer

## Installation

Add this line to your application's Gemfile:

    gem "yammer_client", github: "osdakira/yammer_client"
    gem "capistrano-yammer", github: "osdakira/capistrano-yammer"

And then execute:

    $ bundle

## Usage

Add to `Capifile`

```rb
require "capistrano/yammer"
```

Set to `config/deploy.rb`

```rb
set :yammer_options, {
  oauth_token: ENV["YAMMER_OAUTH_TOKEN"] || "hoge",
  group_id: 1234,
  replied_to_id: 5678
}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/capistrano-yammer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
