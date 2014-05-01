class Laugh
  constructor: (@backend, @id, @callback) ->
    @backend.onReceive(@receive.bind(this))
    @peers = {}

  send: (msg) ->
    @backend.send(@id,msg)

  receive: (id, msg) ->
    # perform checks
    @callback(id,msg)



window.Laugh = Laugh
