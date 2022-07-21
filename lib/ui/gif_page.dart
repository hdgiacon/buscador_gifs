import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

class GifPage extends StatelessWidget {
  final Map gifData;

  const GifPage({
    super.key,
    required this.gifData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gifData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () async {
              await FlutterShare.share(
                title: "",
                linkUrl: gifData["images"]["fixed_height"]["url"],
              );
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
