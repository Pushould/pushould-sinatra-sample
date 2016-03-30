# Minimal [Sinatra](http://www.sinatrarb.com/) App with [Pushould](https://pushould.com)

#### 1. Create Account at [pushoud.com](https://pushould.com)
```sh
$ gem install pushould
$ pushould signup
```

###### or with curl
```sh
$ curl -X GET http://pushould.com/signup\?email\=your_awesome@email.com\&password\=your_awesome_password
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

Finally, open up your browser at [localhost:4567](http://localhost:4567) and try
sending a message.
