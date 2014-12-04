# Ruboty::ItamaeSearch

An Ruboty Handler + Actions to output itamae plugin search result.

[![Gem Version](https://badge.fury.io/rb/ruboty-itamae_search.svg)](http://badge.fury.io/rb/ruboty-itamae_search)

* [Ruboty](https://github.com/r7kamura/ruboty) is Chat bot framework. Ruby + Bot = Ruboty
* [Itamae](https://github.com/ryotarai/itamae) is Simple and lightweight configuration management tool inspired by Chef.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-itamae_search'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-itamae_search


## Commands

|Command|Pattern|Description|
|:--|:--|:--|
|[info](#info)|/itamae_search info (?&lt;gem_name&gt;.+)\z/|get itamae-plugin info|
|[random](#random)|/itamae_search random\z/|get itamae-plugin info at random|
|[ranking](#ranking)|/itamae_search ranking (?&lt;limit&gt;\d+)\z/|get itamae-plugin ranking|
|[author_ranking](#author_ranking)|/itamae_search author_ranking (?&lt;limit&gt;\d+)\z/|get itamae-plugin author_ranking|

## Usage
### info
* get itamae-plugin info

~~~
> ruboty itamae_search info itamae
name:itamae
desc:Simple Configuration Management Tool
downloads:6895
rubygems_uri:http://rubygems.org/gems/itamae
homepage_uri:https://github.com/ryotarai/itamae
~~~

### random
* get itamae-plugin info at random

~~~
> ruboty itamae_search random
name:itamae-plugin-recipe-openresty
desc:Itamae openresty recipe plugin
downloads:96
rubygems_uri:http://rubygems.org/gems/itamae-plugin-recipe-openresty
homepage_uri:

> ruboty itamae_search random
name:itamae-plugin-resource-ghq
desc:Itamae resource plugin to manage repositories with ghq.
downloads:165
rubygems_uri:http://rubygems.org/gems/itamae-plugin-resource-ghq
homepage_uri:https://github.com/k0kubun/itamae-plugin-resource-ghq
~~~

### ranking
* get itamae-plugin ranking

~~~
> ruboty itamae_search ranking 3
no:1,name:itamae-plugin-resource-mail_alias,downloads:1069
no:2,name:itamae-plugin-recipe-selinux,downloads:1065
no:3,name:itamae-plugin-resource-cask,downloads:628
~~~

### author_ranking
* get itamae-plugin author_ranking

~~~
> ruboty itamae_search author_ranking 3
no:1,author:Gosuke Miyashita,downloads:2134
no:2,author:Takashi Kokubun,downloads:915
no:3,author:Ru/MuckRu,downloads:308
~~~

## ENV

|Name|Description|
|:--|:--|
|--|--|

## Dependency

|Name|Description|
|:--|:--|
|ruboty-sonar gem|<i class="fa fa-github-square" style="font-size:1em;"></i> [itamae-sonar gem](https://github.com/tbpgr/itamae-sonar)|

## Contributing

1. Fork it ( https://github.com/tbpgr/ruboty-itamae_search/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
