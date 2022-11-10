import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/story_guru_controller.dart';

class StoryGuruView extends GetView<StoryGuruController> {
  const StoryGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StoryGuruView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StoryGuruView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
