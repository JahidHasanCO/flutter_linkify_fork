import 'package:flutter/material.dart';
import 'package:flutter_linkify_fork/flutter_linkify_fork.dart';
import 'package:linkify/linkify.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const LinkifyExample());

class LinkifyExample extends StatelessWidget {
  const LinkifyExample({Key? key}) : super(key: key);

  final text = """
  I was checking out some playlists on Spotify the other day and found this one: https://open.spotify.com/playlist/247qElLEtqp6I1Q0Lv94cb?si=AyrClOAtSeSLwwjoZw3ZIg&nd=1&dlsi=6850e64888cd4498
.
Later, I discovered an artist I really liked: https://open.spotify.com/artist/0nRNnA6brTrrpPJybl1cdU
.

For professional connections, you can always reach me on LinkedIn at https://www.linkedin.com/in/jahidhasandiu/
 or check my projects on GitHub here: https://github.com/Jahidhasanco
.

I also keep a simple portfolio at https://bento.me/jahidhasanco
, and sometimes I share quick thoughts on Twitter (X) at https://x.com/Jahidhasanco
.

Oh, and if you’re into YouTube creators, you might enjoy https://www.youtube.com/@iamluv
.
  """;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_linkify_fork example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter_linkify_fork example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Linkify(
                onOpen: _onOpen,
                text: text,
                useFavicon: true,
                formatFaviconUrl: true,
              ),
              Linkify(
                onOpen: _onOpen,
                text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
                useFavicon: true,
                formatFaviconUrl: true,
              ),
              const SizedBox(height: 20),
              SelectableLinkify(
                onOpen: _onOpen,
                text:
                    "Modified by https://github.com/JahidHasanCO\n\nMail: jahidhasan.r150@gmail.com",
                useFavicon: true,
                formatFaviconUrl: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (!await launchUrl(Uri.parse(link.url))) {
      throw Exception('Could not launch ${link.url}');
    }
  }
}
