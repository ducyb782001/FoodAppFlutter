import 'package:infinite_list_app/models/comment.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Comment>> getCommentsFromAPi() async {
  final url = "https://jsonplaceholder.typicode.com/comments";
  final http.Client httpClient = http.Client();
  try {
    final response = await httpClient.get(Uri.parse(url));
    print('something');
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body) as List;
      final Iterable<Comment> comments = responseData.map((comment) {
        return Comment(
            id: comment['id'],
            name: comment['name'],
            email: comment['email'],
            body: comment['body']);
      });
      print('Break point here');
    }
  } catch (exception) {
    print('Exception: $exception');
  }
  return [];
}
