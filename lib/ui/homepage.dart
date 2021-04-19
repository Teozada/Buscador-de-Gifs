import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<Map> _getGifs() async {

    String _search;
    int _offset = 0;

    http.Response response;

    if (_search == null)
    response = await http.get('https://api.giphy.com/v1/gifs/trending?api_key=rksTe2aCkB6uWN8moA0mQYHmy93A45kc&limit=20&rating=g');
    else 
    response = await http.get('https://api.giphy.com/v1/gifs/search?api_key=rksTe2aCkB6uWN8moA0mQYHmy93A45kc&q=$_search&limit=20&offset=$_offset&rating=g&lang=pt');
    return 
    json.decode(response.body);
  }
  @override
  void initState() {
    super.initState();
    _getGifs().then((map){
      print(map);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}