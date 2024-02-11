import 'package:binbuddy_backend/binbuddy_backend.dart' as lib;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main() async {
  var handler =
      const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(lib.echoRequest);

  var server = await shelf_io.serve(handler, 'localhost', 8080);

  // Enable content compression
  server.autoCompress = true;

  print('Serving at http://${server.address.host}:${server.port}');
}