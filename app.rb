require 'tilt/erubis'
require 'sinatra'
require 'pushould'

pushould = Pushould.new(url: ENV['URL'], server_token: ENV['SERVER_TOKEN'], email: ENV['EMAIL'], password: ENV['PASSWORD'])

get '/' do
  @client_token = ENV['CLIENT_TOKEN']
  @url = ENV['URL']
  pushould.trigger(room: 'private area', event: 'send', data: { users: %w(first second third), msg: 'hello world' })
  erb :index
end

post '/comment' do
  @client_token = ENV['CLIENT_TOKEN']
  @url = ENV['URL']
  pushould.trigger(room: 'private area', event: 'send', data: { msg: 'new comment' })
end
