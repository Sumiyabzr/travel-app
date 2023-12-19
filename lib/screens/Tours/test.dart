import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // for using json.decode

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late Future<List<String>> names;

  @override
  void initState() {
    super.initState();
    // Load the data when the widget is initialized
    names = fetchNames();
  }

  Future<List<String>> fetchNames() async {
    // The API endpoint
    const url = 'http://202.179.6.26:5000/api_free';
    // The request payload
    var requestBody = jsonEncode({
      "sn": "place_list",
    });

    // Make the post request
    final response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: requestBody,
    );

    // If the server returns a 200 OK response, parse the JSON
    if (response.statusCode == 200) {
      return parseNames(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load names');
    }
  }

  List<String> parseNames(String responseBody) {
    final parsed = json.decode(responseBody);
    final List<dynamic> results = parsed['result'];
    return results.map((place) => place['name'].toString()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: FutureBuilder<List<String>>(
        future: names,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No names found'));
          } else {
            // Build the ListView with the data
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
