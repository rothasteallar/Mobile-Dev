import 'package:jwt_decoder/jwt_decoder.dart';

import '../../model/auth_session.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../model/user.dart';
import 'package:http/http.dart';

class AuthenticationService {
  static AuthenticationService instance = AuthenticationService();

  AuthSession? session;

  bool get isLoggedIn => session != null;

  Future<void> login({required String name, required String password}) async {
    final Uri baseUri = Uri.parse("http://localhost:3000");
    final Uri loginUrl = baseUri.replace(path: "login");

    // 1- Create the JSON body
    Map<String, dynamic> body = {"name": name, "password": password};

    // 2- Fetch POST /login
    Response response = await http.post(
      loginUrl,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(body),
    );

    // 3- Decode the json response
    Map<String, dynamic> json = jsonDecode(response.body);

    // 4- If failed, throw AuthException
    if (response.statusCode != 200) {
      throw AuthException(json["error"] ?? "Login failed");
    }

    // 5- Get the token
    String token = json["token"];

    // 6- Decode token to get user
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    User user = User.fromJSon(decodedToken);

    // 7- Update the session
    session = AuthSession(token: token, user: user);

    //logout function
    void logout() {
      session = null;
    }
  }
}

class AuthException implements Exception {
  final String message;

  AuthException(this.message);
  @override
  String toString() {
    return message;
  }
}
