import 'dart:convert';

import 'package:web_socket_client/web_socket_client.dart';

class ChatWebService {
  WebSocket? _socket;

  void connect() {
    _socket = WebSocket(Uri.parse("ws://localhost:8000/ws/chat"));

    _socket!.messages.listen((message) {
      final data = json.decode(message);
      print(data['type']);
    });
  }

  void chat() {}
}
