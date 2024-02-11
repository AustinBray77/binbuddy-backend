import 'package:shelf/shelf.dart';

Response echoRequest(Request request) {
    print('Request At: /${request.url}');
    return Response.ok('Server is running');
}

