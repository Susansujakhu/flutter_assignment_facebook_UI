import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  Map<String, String> map1 = {
    'name': 'John Updated his Profile Photo',
    'description':
        "O my friend -- but it is too much for my strength -- I sink under the weight of the splendour of these visions! A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.",
    'photo': '1st.png',
    'like': '200',
    'comment': '56',
    'share': '30',
    'icon': 'a.png',
  };
  Map<String, String> map2 = {
    'name': 'Shon Updated his Cover Photo',
    'description':
        "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.",
    'photo': '2nd.png',
    'like': '167',
    'comment': '33',
    'share': '3',
    'icon': 'b.png',
  };
  Map<String, String> map3 = {
    'name': 'RONB Uploaded His Photo',
    'description':
        "Update on person who was injured while making tiktok video: Stunt garna khojda bridge bata khasera 24 years old male ko kohalpur medical college ma treatment hudai cha",
    'photo': 'wifi.png',
    'like': '223',
    'comment': '98',
    'share': '32',
    'icon': 'c.png',
  };
  Map<String, String> map4 = {
    'name': 'Plon Updated his Profile Photo',
    'description':
        "When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary,",
    'photo': '3.jpg',
    'like': '987',
    'comment': '120',
    'share': '199',
    'icon': 'd.png',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appbar(), body: _body(context));
  }

  Widget _appbar() {
    return AppBar(
      title: Text("Facebook"),
    );
  }

  Widget _body(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 5,
        ),
        _card(context, map1),
        _card(context, map2),
        _card(context, map3),
        _card(context, map4),
      ],
    );
  }

  Widget _card(BuildContext context, Map maps) {
    return GestureDetector(
        onTap: () =>
            Navigator.pushNamed(context, '/detailedPage', arguments: maps),
        child: Card(margin: EdgeInsets.all(10), child: _container(maps)));
  }

  Widget _container(Map maps) {
    return Column(
      children: [
        _headerRow(maps),
        Text(maps['description']),
        Image(
          image: AssetImage('./images/' + maps['photo']),
        ),
        _likesCounts(maps),
        SizedBox(
          height: .5,
          width: 375,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ),
        _footer(),
      ],
    );
  }

  Widget _headerRow(Map maps) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE d MMM \t kk:mm:ss').format(now);
    return Row(
      children: [
        Container(
          height: 50,
          padding: EdgeInsets.all(5),
          decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          child: Image(
            image: AssetImage('./images/' + maps['icon']),
            height: 40,
            width: 40,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(maps['name']), Text(formattedDate)],
        ),
      ],
    );
  }

  Widget _likesCounts(Map maps) {
    return Row(
      children: [
        Icon(
          Icons.thumb_up_alt_rounded,
          size: 15,
          color: Colors.blue,
        ),
        Icon(
          Icons.favorite,
          color: Colors.red,
          size: 15,
        ),
        Text(maps['like']),
        SizedBox(
          width: 140,
        ),
        Text(maps['comment'] + " Comments \u2022" + maps['share'] + " Shares"),
      ],
    );
  }

  Widget _footer() {
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
