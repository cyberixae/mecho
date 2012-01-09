def web_socket_do_extra_handshake(request):
    pass

def web_socket_transfer_data(request):
    while True:
        msg = request.ws_stream.receive_message()
        if type(msg) == type(u''):
            request.ws_stream.send_message(msg)
        else:
            request.ws_stream.send_message(msg, binary=True)
