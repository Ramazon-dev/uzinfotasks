import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzinfotasks/core/constants/app_images.dart';
import 'package:uzinfotasks/core/constants/functions.dart';
import 'package:uzinfotasks/core/constants/sizeconfig.dart';
import 'package:uzinfotasks/core/models/weather_model.dart';
import 'package:uzinfotasks/core/service/weather_service.dart';

class HomePage extends StatelessWidget {
  String region;
  HomePage({Key? key, required this.region}) : super(key: key);
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: FutureBuilder<WeatherModel>(
        future: getWeather(),
        builder: (context, AsyncSnapshot<WeatherModel> snap) {
          if (snap.hasData) {
            debugPrint("snap ichini koramiza nma kevotganini ${snap.data}");
            return Stack(
              children: [
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImages.backgroundLight,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: getHeight(450),
                          width: getWidth(400),
                          margin: EdgeInsets.only(
                            top: getHeight(120),
                            left: getWidth(40),
                            right: getWidth(40),
                            bottom: getHeight(30),
                          ),
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue.shade700,
                              width: getHeight(2.5),
                            ),
                            borderRadius: BorderRadius.circular(
                              getHeight(15),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${dateTime.hour} : ${dateTime.minute}',
                                style: TextStyle(
                                  fontSize: getHeight(70),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${dateTime.day} ${IntToString.month(dateTime.month)}',
                                style: TextStyle(
                                  fontSize: getHeight(35),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                IntToString.weekDays(dateTime.weekday),
                                style: TextStyle(
                                  fontSize: getHeight(20),
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(
                              image: const AssetImage(
                                AppImages.lightRain,
                              ),
                              height: getHeight(100),
                            ),
                            Column(
                              children: [
                                Text(
                                  "+${snap.data!.airT!.toInt()}",
                                  style: TextStyle(
                                    fontSize: getHeight(45),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: getHeight(20),
                                ),
                                Text(
                                  "${snap.data?.city?.title}",
                                  style: TextStyle(
                                    fontSize: getHeight(30),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  height: getHeight(150),
                  width: getWidth(150),
                  left: getWidth(110),
                  top: getHeight(40),
                  child: const Image(
                    image: AssetImage(
                      AppImages.gerb,
                    ),
                  ),
                ),
              ],
            );
          } else if (snap.hasError) {
            return const Center(
              child: Text("hatto ketti"),
            );
          } else {
            return Center(
              child: CupertinoActivityIndicator(
                radius: getHeight(35),
              ),
            );
          }
        },
      ),
    );
  }
}
