import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:qatar22/screens/feed/Data/data.dart';
import 'package:qatar22/screens/feed/feeddetiel.dart';

class FeedScreen extends StatefulWidget {
  FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  late Future<List<Feed>> feeds;

  @override
  void initState() {
    super.initState();
    feeds = fetchFeeds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          builder: (context, AsyncSnapshot<List<Feed>> snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage('${snapshot.data![index].img}'),
                      ),
                      title: Text('${snapshot.data![index].titre}'),
                      subtitle: Text('${snapshot.data![index].type}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              title: snapshot.data![index].titre,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Something went wrong :('));
            }

            return CircularProgressIndicator();
          },
          future: feeds,
        ),
      ),
    );
  }
}

Future<List<Feed>> fetchFeeds() async {
  final response = await http
      .get(Uri.parse('http://q22.avocatar.tn/WebServices/get_feed.php'));

  if (response.statusCode == 200) {
    var topShowsJson = jsonDecode(response.body)['Q22_ListFeed'] as List;
    return topShowsJson.map((feed) => Feed.fromJson(feed)).toList();
  } else {
    throw Exception('Failed to load feeds');
  }
}
