
import 'package:flutter/material.dart';
import '../mock/mock_data.dart';
import 'KurdistanCity_detail.dart';

class KurdistanCities extends StatelessWidget {
  const KurdistanCities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "شارەکانی کوردستان",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            toolbarHeight: 50,
            backgroundColor: Color.fromARGB(255, 79, 131, 118),
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: mockdata.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                height: 200,
                                width: 300,
                                child: Image.network(
                                    mockdata[index]["city_image"].toString()),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 85, 122, 113),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                      mockdata[index]["city_name"].toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      index: index,
                                    )));
                          },
                        );
                      })),
            ],
          )),
    );
  }
}