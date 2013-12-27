require 'rubygems'
require 'oauth'
require 'yelp'
               
api_host = 'api.yelp.com'

#consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://rudems.herokuapp.com"})
#access_token = OAuth::AccessToken.new(consumer, token, token_secret)

#new yelp instance
def search
  client = Yelp::Client.new
  include Yelp::V1::Review::Request
  request = BoudingBox.new(
                :city => 'New York',
                :state  => 'NY',
                :category => ['pets', 'shopping'])
  response = client.search(request)    
  @yelp_results = response            
end 

