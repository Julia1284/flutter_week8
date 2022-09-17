import 'package:flutter/material.dart';
import 'package:week_8_2/data/gif_service.dart';
import 'package:week_8_2/screens/widgets/draw_gifs.dart';
import 'dart:async';

import 'package:week_8_2/screens/widgets/searchform.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _gifService = GifService();
  String value = '';
  late Future<List<dynamic>> gifsList;
  @override
  void initState() {
    super.initState();
    gifsList = _gifService.getGifsByParameters(value);
  }

  void changeValue(val) {
    gifsList = _gifService.getGifsByParameters(val);
    setState(() {});
    value = val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Запрос на сервер'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SearchForm(onSearch: changeValue),
            DrawGifs(gifsList: gifsList)
          ],
        ));
  }
}
