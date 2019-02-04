App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#chatbox').append data.html_formatted_message
    scroll_bottom()
    # Called when there's incoming data on the websocket for this channel
