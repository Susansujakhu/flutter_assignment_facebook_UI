import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context).settings.arguments;
    print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['name']),
      ),
      body: _body(arguments),
      bottomSheet: _bottom(arguments),
    );
  }

  Widget _body(Map maps) {
    return Card(
      color: Colors.blueGrey,
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(maps['description']),
          SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage('./images/' + maps['photo']),
          ),
        ],
      ),
    );
  }

  Widget _bottom(Map maps) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            Icons.thumb_up_alt_outlined,
            size: 30,
          ),
          Text("Like"),
          SizedBox(width: 60),
          Icon(
            Icons.messenger_outline_outlined,
            size: 30,
          ),
          Text("Comment"),
          SizedBox(
            width: 60,
          ),
          Icon(
            Icons.forward_outlined,
            size: 30,
          ),
          Text("Share"),
        ],
      ),
    );
  }
}
