import 'package:flutter/material.dart';
import 'package:playstore/screen/app_for/provider/app_pro.dart';
import 'package:playstore/utiles/LIST.dart';
import 'package:provider/provider.dart';

class AppFor extends StatefulWidget {
  const AppFor({Key? key}) : super(key: key);

  @override
  State<AppFor> createState() => _AppForState();
}

class _AppForState extends State<AppFor> {
  AppProvider? appProviderf;
  AppProvider? appProvidert;
  @override
  Widget build(BuildContext context) {
    appProviderf = Provider.of<AppProvider>(context,listen: false);
    appProvidert = Provider.of<AppProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1F1F1F),
        body: Padding(
          padding: const EdgeInsets.only(top: 10,left: 10),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Musics Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white70),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.white70),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: img.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  img[index],
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(name[index],style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Social Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white70),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.white),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: socialimg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'music',
                                    arguments: index);
                              },
                              child: Image.asset(
                                socialimg[index],
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(socialname[index],style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-commerce Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white70),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.white70),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: socialimg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              del[index],
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(delname[index],style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
