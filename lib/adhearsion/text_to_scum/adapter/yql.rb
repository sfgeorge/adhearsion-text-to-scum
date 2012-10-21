require 'faraday'
require 'uri'

module Adhearsion
  module TextToScum
    module Adapter
      class YQL
        def convert(phrase)
          connection = Faraday.new :url => domain
          response = connection.get path, params(phrase)
          doc = JSON.parse response.body
          doc['query']['results']['result']
        end

        def domain
          'http://query.yahooapis.com'
        end

        def path
          '/v1/public/yql'
        end

        def params(phrase)
        {
          :q      => data_query(phrase),
          :format => 'json',
          :env    => 'store://kid666.com/piratespeak',
        }
        end

        def data_query(phrase)
          escaped = URI.escape(phrase)
          %Q{select * from piratespeak.translate where html = "#{escaped}"}
        end
      end
    end
  end
end