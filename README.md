# Minimal [Sinatra](http://www.sinatrarb.com/) App with [Pushould](https://yhoshino11.github.io)

#### 1. Create Account at pushoud.com
```sh
$ curl -X GET http://pushould.com/signup\?email\=your_awesome@email.com\&password\=your_awesome_password
# { url: 'your_api_url', client_token: 'your_client_token', server_token: 'your_server_token' }
```

#### 2. set environment variables
```sh
# .zshrc
# add these on the bottom of your .zshrc
export EMAIL='your_awesome@email.com'
export PASSWORD='your_awesome_password'
export URL='your_api_url'
export CLIENT_TOKEN='your_client_token'
export SERVER_TOKEN='your_server_token'
```
```sh
$ exec $SHELL -l
```

#### 3. Boom!
```sh
$ gem install sinatra
$ gem install pushould-ruby
$ ruby app.rb
```
