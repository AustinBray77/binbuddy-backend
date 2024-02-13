import "package:shelf/shelf.dart";
import 'package:binbuddy_backend/requests.dart';

const routes = {
  "login": processLogin,
  "signup": processSignup
};

Response routeRequest(Request request) {
    var route =  routes[request.url.toString()];

    print("URI: ${request.url.toString()}");

    if(route == null) {
        return Response.notFound("Endpoint not found");
    }

    return route(request);
}