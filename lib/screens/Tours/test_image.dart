import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert'; // for using json.decode

class TestImage extends StatefulWidget {
  const TestImage({Key? key}) : super(key: key);

  @override
  _TestImageState createState() => _TestImageState();
}

class _TestImageState extends State<TestImage> {
  late Future<List<String>> imageUrls;

  @override
  void initState() {
    super.initState();
    // Fetch the list of image URLs when the widget is first created
    imageUrls = fetchImageUrlsFromApi();
  }

  Future<List<String>> fetchImageUrlsFromApi() async {
    // Replace with the actual API endpoint
    const apiEndpoint = 'http://202.179.6.26:5000/api_free';
    var requestBody = jsonEncode({
      "sn": "place_image_list",
    });

    final response = await http.post(
      Uri.parse(apiEndpoint),
      headers: {"Content-Type": "application/json"},
      body: requestBody,
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      // Assuming the API returns a list of image data
      List<String> imageUrls = responseData['result']
          .map<String>((imageData) =>
              'https://r8vdqlchkz4chp8-dbfactory.adb.ap-tokyo-1.oraclecloudapps.com/ords/admin/files/download/' +
              imageData['url_image'])
          .toList();
      return imageUrls;
    } else {
      throw Exception('Failed to load image URLs');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: imageUrls,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          // Use GridView.builder to create a grid of images
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // adjust the number of images per row
              childAspectRatio: 1.0, // adjust the aspect ratio of the images
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: snapshot.data![index],
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              );
            },
          );
        } else {
          return const Center(child: Text('No images found'));
        }
      },
    );
  }
}
