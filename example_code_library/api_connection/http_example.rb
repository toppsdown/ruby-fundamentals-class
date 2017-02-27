# to get httparty:
# 1) Open terminal
# 2) type: "gem install httparty"

require 'httparty'


# API: Application Programming Interface
# List of apis: https://github.com/toddmotto/public-apis



url_to_mbta_api = "http://realtime.mbta.com/developer/api/v2/stopsbylocation?api_key=wX9NwuHnZU2ToO7GmGR9uw&lat=42.346961&lon=-71.076640&format=json"

http_response_object = HTTParty.get(url_to_mbta_api)

mbta_data = http_response_object.parsed_response

puts mbta_data.inspect
