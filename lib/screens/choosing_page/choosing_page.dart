import 'package:flutter/material.dart';
import 'package:uzinfotasks/core/constants/app_images.dart';
import 'package:uzinfotasks/core/constants/sizeconfig.dart';
import 'package:uzinfotasks/screens/home/home_page.dart';

class ChoosingPage extends StatelessWidget {
  const ChoosingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(20),
            vertical: getHeight(60),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Image.asset(
                  AppImages.gerb,
                  height: getHeight(150),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      debugPrint('tapped');
                    },
                    child: const Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),

                  // suffix: const Icon(
                  //   Icons.arrow_downward,
                  //   color: Colors.white,
                  // ),
                  filled: true,
                  fillColor: Colors.green[500],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      getHeight(30),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lime[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      getHeight(30),
                    ),
                  ),
                  fixedSize: Size(
                    getWidth(150),
                    getHeight(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  "nachat",
                  style: TextStyle(
                    fontSize: getHeight(20),
                    color: Colors.black,
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
