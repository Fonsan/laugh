fakeBackend = {
  send: -> console.log("send",arguments)
  receive: ->
  onReceive: (callback) -> fakeBackend.receive = callback
}

window.fakeBackend = fakeBackend

l = new Laugh(fakeBackend, 123, (id, msg)-> console.log("r commadn", id,msg))

l.send("foo")
fakeBackend.receive(32,'bar')
