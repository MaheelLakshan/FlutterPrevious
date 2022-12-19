import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/rest_api_service.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final apiService=RestApiService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    apiService.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(

      ),
    );
  }
}
