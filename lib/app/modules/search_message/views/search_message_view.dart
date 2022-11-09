import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_message_controller.dart';

class SearchMessageView extends GetView<SearchMessageController> {
  const SearchMessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchMessageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SearchMessageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
