[![Latest Stable Version](https://img.shields.io/gem/v/ip2proxy_rails.svg)](https://rubygems.org/gems/ip2proxy_rails)
[![Total Downloads](https://img.shields.io/gem/dt/ip2proxy_rails.svg)](https://rubygems.org/gems/ip2proxy_rails)

# IP2Proxy Ruby on Rails Library
This IP2Proxy Ruby on Rails library allows user to reverse search of IP address to detect VPN servers, open proxies, web proxies, Tor exit nodes, search engine robots, data center ranges, residential proxies, consumer privacy networks, and enterprise private networks using IP2Proxy BIN database. Other information available includes proxy type, country, state, city, ISP, domain name, usage type, AS number, AS name, threats, last seen date and provider names. It lookup the proxy IP address from **IP2Proxy BIN Data** file.

## INSTALLATION
1. Add this lines to your application's Gemfile:
```ruby
gem 'ip2proxy_ruby'
gem 'ip2proxy_rails'
```
2. Then execute it
```bash
$ bundle install
```
3. Open the preferred file in the `config/environments` directory. Add the following code to the chosen configuration file after the `Rails.application.configure do` line.
```ruby
config.ip2proxy_db_path = Rails.root.join('lib', 'assets', 'ip2proxy_rails', 'IP2PROXY.BIN').to_s
```

## USAGE
1. Download IP2Proxy BIN database
    - IP2Proxy LITE database at https://lite.ip2location.com
    - IP2Proxy Commercial database at https://www.ip2location.com/proxy-database
2. Create a folder named as `ip2proxy_rails` in the `lib/assets` directory.
3. Unzip and copy the BIN file into `lib/assets/ip2proxy_rails` folder.
4. Rename the BIN file to **IP2PROXY.BIN**.
5. Create a **TestController** using the below command line
```bash
bin/rails generate controller Test index --skip-routes
```
6. Open the *app/controllers/test_controller.rb* in any text editor.
7. Add the below lines into the controller file.
```ruby
require 'ip2proxy_rails'

class TestController < ApplicationController
  def index
    proxy_service = Ip2proxyRails.new('1.2.3.4')
    @is_proxy = proxy_service.is_proxy
    @proxy_type = proxy_service.proxy_type
    @country_code = proxy_service.country_code
    @country_name = proxy_service.country_name
    @region = proxy_service.region
    @city = proxy_service.city
    @isp = proxy_service.isp
    @domain = proxy_service.domain
    @usage_type = proxy_service.usagetype
    @asn = proxy_service.asn
    @as = proxy_service.as
    @last_seen = proxy_service.last_seen
    @threat = proxy_service.threat
    @provider = proxy_service.provider
    @fraud_score = proxy_service.fraud_score
  end
end
```
8. Open the *app/views/test/index.html.erb* in any text editor and add the below lines into it.
```
<p>is Proxy: <%= @is_proxy %></p>
<p>Proxy Type: <%= @proxy_type %></p>
<p>Country Code: <%= @country_code %></p>
<p>Country Name: <%= @country_name %></p>
<p>Region Name: <%= @region %></p>
<p>City Name: <%= @city %></p>
<p>ISP Name: <%= @isp %></p>
<p>Domain Name: <%= @domain %></p>
<p>Usage Type: <%= @usage_type %></p>
<p>ASN: <%= @asn %></p>
<p>AS: <%= @as %></p>
<p>Last Seen: <%= @last_seen %></p>
<p>Threat: <%= @threat %></p>
<p>Provider: <%= @provider %></p>
<p>Fraud Score: <%= @fraud_score %></p>
```
9. Add the following line into the *config/routes.rb* file after the `Rails.application.routes.draw do` line.
```ruby
get "/test", to: "test#index"
```
10. Restart your development server.
```bash
$ bin/rails server
```
11. Enter the URL <your domain>/test and run. You should see the proxy information of **1.2.3.4** IP address.

## Dependencies
This library requires IP2Proxy BIN data file to function. You may download the BIN data file at
* IP2Proxy LITE BIN Data (Free): https://lite.ip2location.com
* IP2Proxy Commercial BIN Data (Comprehensive): https://www.ip2location.com/proxy-database

## Support
Email: support@ip2location.com
URL: [https://www.ip2location.com](https://www.ip2location.com)
