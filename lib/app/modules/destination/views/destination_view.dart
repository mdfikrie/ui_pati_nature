import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/destination_controller.dart';

class DestinationView extends GetView<DestinationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DestinationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DestinationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
