require 'rest-client'
require 'json'
require 'sinatra'

PUSHOULD_URL = '127.0.0.1:3000'

class Client
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def trigger(room: _room, event: _event, data: _data)
    data = { room: room,
             event: event,
             custom: data }.to_json
    RestClient::Resource.new(@url)
                        .get(params: { data: data },
                             content_type: 'application/json',
                             accept: 'application/json')
  end
end

pushould = Client.new(PUSHOULD_URL)

get '/' do
  @url = PUSHOULD_URL
  erb :index
end

post '/comment' do
  @url = PUSHOULD_URL
  pushould.trigger(
    room: 'private area',
    event: 'send',
    data: {
      msg: 'new comment from sinatra' })
end
