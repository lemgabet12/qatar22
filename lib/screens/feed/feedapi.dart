import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:qatar22/screens/feed/Data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

Future getJWT() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('accessToken')!;
}

//GET METHOD

Future<List<Feed>> getArchives() async {
  String jwt = await getJWT();
  http.Response response = await http.get(
    Uri.parse('http://q22.avocatar.tn/app/list_feed.php'),
    headers: {
      HttpHeaders.authorizationHeader: "Bearer $jwt",
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8"
    },
  );
  if (response.statusCode == 200) {
    return compute(parseFeeds, response.body);
  } else {
    throw Exception("error: status code ${response.statusCode}");
  }
}

List<Feed> parseFeeds(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Feed>((json) => Feed.fromJson(json)).toList();
}

Feed parseFeed(String responseBody) {
  final parsed = jsonDecode(responseBody);
  return Feed.fromJson(parsed);
}

//POST METHOD









//Delete



//PUT


