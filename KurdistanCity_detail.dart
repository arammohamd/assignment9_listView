import 'package:flutter/material.dart';
import '../mock/mock_data.dart';
class DetailsScreen extends StatelessWidget {
  DetailsScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    child:
                        Image.network(mockdata[index]["city_image"].toString()),
                  ),
                  Positioned(
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical:10),
                child: Text(mockdata[index]["city_name"].toString(),
                    style: TextStyle(
                      fontSize: 22,
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal:10),
                child: Text(mockdata[index]["description"].toString(),
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ]),
      ),
    );
  }
}