# Fix issue in development mode where the ssl certificates are invalid
# (see: http://stackoverflow.com/questions/33760549/ssl-certificates-error)
require 'faraday'
module Faraday
  class Adapter
    class NetHttp < Faraday::Adapter
      # See original definition here:
      # https://github.com/lostisland/faraday/blob/master/lib/faraday/adapter/net_http.rb
      def ssl_verify_mode(ssl)
        OpenSSL::SSL::VERIFY_NONE
      end
    end
    class HTTPClient < Faraday::Adapter
      # See original definition here:
      # https://github.com/lostisland/faraday/blob/master/lib/faraday/adapter/httpclient.rb
      def ssl_verify_mode(ssl)
        OpenSSL::SSL::VERIFY_NONE
      end
    end
  end
end
