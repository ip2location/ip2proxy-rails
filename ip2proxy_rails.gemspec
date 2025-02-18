Gem::Specification.new do |s|
    s.name = 'ip2proxy_rails'
    s.version = '1.0.0'
    s.required_ruby_version = '>= 2.5.0'
    s.require_paths = ["lib"]
    s.authors = ["ip2location"]
    s.email = ["support@ip2location.com"]
    s.description = "This IP2Proxy Ruby on Rails library allows user to reverse search of IP address to detect VPN servers, open proxies, web proxies, Tor exit nodes, search engine robots, data center ranges, residential proxies, consumer privacy networks, and enterprise private networks using IP2Proxy BIN database. Other information available includes proxy type, country, state, city, ISP, domain name, usage type, AS number, AS name, threats, last seen date and provider names. It lookup the proxy IP address from IP2Proxy BIN Data file."
    s.summary = "IP2Proxy Ruby on Rails library"
    s.homepage = 'https://www.ip2location.com'
    s.licenses = ["MIT"]
    s.files = [
        "LICENSE.txt",
        "Gemfile",
        "README.md",
        "ip2proxy_rails.gemspec",
        "lib/ip2proxy_rails.rb",
    ]
    if s.respond_to?(:metadata=)
        s.metadata = {
          "bug_tracker_uri" => "https://github.com/ip2location/ip2proxy-rails/issues",
          "documentation_uri" => "https://www.rubydoc.info/gems/ip2proxy_rails",
          "homepage_uri" => "https://www.ip2proxy.com",
          "source_code_uri" => "https://github.com/ip2location/ip2proxy-rails",
        }
    end
    s.add_runtime_dependency 'ip2proxy_ruby', '>= 3.3.1'
end
