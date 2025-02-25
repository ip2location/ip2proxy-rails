require 'ip2proxy_ruby'

class Ip2proxyRails
    def initialize(ip_address)
        @ip_address = ip_address
        @i2p = Ip2proxy.new.open(Rails.configuration.ip2proxy_db_path)
    end

    def proxy
        @i2p.get_all(@ip_address)
    end

    def is_proxy
        proxy['is_proxy'].to_s
    end

    def proxy_type
        proxy['proxy_type']
    end

    def country_code
        proxy['country_short']
    end

    def country_name
        proxy['country_long']
    end

    def region
        proxy['region']
    end

    def city
        proxy['city']
    end

    def isp
        proxy['isp']
    end

    def domain
        proxy['domain']
    end

    def usagetype
        proxy['usagetype']
    end

    def asn
        proxy['asn']
    end

    def as
        proxy['as']
    end

    def last_seen
        proxy['last_seen']
    end

    def threat
        proxy['threat']
    end

    def provider
        proxy['provider']
    end

    def fraud_score
        proxy['fraud_score']
    end
end
