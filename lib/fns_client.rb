require 'json'
require 'uri'
require 'net/http'

class FnsClient
  def initialize(query)
    @query = query
    @uri = URI('https://egrul.nalog.ru')
  end

  def call
    handle_info(generate_token)
  rescue => e
    "Error: #{e}"
  end

  def generate_token
    response = Net::HTTP.post_form(@uri, query: @query)

    result = JSON.parse(response.body)

    result['t']
  end

  def handle_info(token)
    response = Net::HTTP.get_response(@uri + '/search-result/' + token)

    result = JSON.parse(response.body)

    result
  end
end
