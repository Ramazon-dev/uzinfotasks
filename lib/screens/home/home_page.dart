import 'package:flutter/material.dart';
import 'package:uzinfotasks/core/constants/app_images.dart';
import 'package:uzinfotasks/core/constants/sizeconfig.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
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
                          '${dateTime.day} - ${dateTime.month}',
                          style: TextStyle(
                            fontSize: getHeight(35),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${dateTime.weekday}',
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
                          AppImages.heavyRain,
                        ),
                        height: getHeight(100),
                      ),
                      Column(
                        children: [
                          Text(
                            '+ 27 *',
                            style: TextStyle(
                              fontSize: getHeight(45),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: getHeight(20),
                          ),
                          Text(
                            'Toshkent',
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
      ),
    );
  }
}
