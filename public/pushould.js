var Pushould = function() {
  function Pushould(info) {
    this.socket = io.connect(
      info.url, {
      query: 'client_token=' + info.client_token}, {
      transports: ['polling', 'websocket']});
  }

  Pushould.prototype.subscribe = function(room) {
    this.socket.emit('subscribe', { 'room': room });
    return this;
  }

  Pushould.prototype.bind = function(event, func) {
    return this.socket.on(event, func);
  }
  
  return Pushould;
}();
