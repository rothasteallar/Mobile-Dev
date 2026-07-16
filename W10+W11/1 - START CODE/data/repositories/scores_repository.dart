import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../model/auth_session.dart';
import '../../model/score.dart';
import '../services/auth_service.dart';

class ScoresRepository {
  static ScoresRepository instance = ScoresRepository();

  Future<List<Score>> getSCores() async {
    final Uri baseUri = Uri.parse("http://localhost:3000");
    final Uri scoresUri = baseUri.replace(path: "/scores");

    AuthSession? session = AuthenticationService.instance.session;
    if (session == null) {
      throw Exception("Cannot fetch without authentication");
    }

    // Fetch GET /scores with the token in the headers
    Response response = await http.get(
      scoresUri,
      headers: {"Authorization": "Bearer ${session.token}"},
    );

    // If statusCode 200, decode and return the scores
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      List<Score> scores = jsonList
          .map((item) => Score.fromJSon(item))
          .toList();
      return scores;
    }

    // If no success throw exception
    throw Exception("Failed to fetch scores: ${response.statusCode}");

    /// return [];  // fake
  }
}
